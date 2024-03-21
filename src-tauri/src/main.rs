#![cfg_attr(
    all(not(debug_assertions), target_os = "windows"),
    windows_subsystem = "windows"
)]

use tauri::SystemTray;
use tauri::*;
use tauri::{CustomMenuItem, SystemTrayMenu, SystemTrayMenuItem};

#[derive(Clone, serde::Serialize)]
struct Payload {
    args: Vec<String>,
    cwd: String,
}
// Learn more about Tauri commands at https://tauri.app/v1/guides/features/command

fn main() {
    let quit = CustomMenuItem::new("quit".to_string(), "Quit");
    let hide = CustomMenuItem::new("hide".to_string(), "Hide");

    let tray_menu = SystemTrayMenu::new()
        .add_item(quit)
        .add_native_item(SystemTrayMenuItem::Separator)
        .add_item(hide);

    let system_tray = SystemTray::new().with_menu(tray_menu);

    let settings_button_injector_js = "
    const open_settings = new Event('open-settings');
    let top_bar = document.getElementsByClassName('center-content style-scope ytmusic-nav-bar')[0];
    let settings_button = document.createElement('button');
    settings_button.innerText = 'Settings';
    settings_button.addEventListener('click', (event) => {;
        window.dispatchEvent('open-settings');
    });
    top_bar.prepend(settings_button);
    ";

    Builder::default()
        .plugin(tauri_plugin_single_instance::init(|app, argv, cwd| {
            app.emit_all("single-instance", Payload { args: argv, cwd })
                .unwrap();
        }))
        .system_tray(system_tray)
        .setup(|app| {
            #[cfg(debug_assertions)]
            {
                let handle = app.handle();
                let id = app.listen_global("single-instance", move |_| {
                    handle
                        .get_window("main")
                        .unwrap()
                        .show()
                        .expect("could not show main window");
                });
                app.unlisten(id);
            }
            Ok(())
        })
        .on_page_load(|window, _| {
            window
                .eval(settings_button_injector_js)
                .expect("could not inject javascript")
        })
        .on_window_event(|event| match event.event() {
            WindowEvent::CloseRequested { api, .. } => {
                event.window().hide().unwrap();
                api.prevent_close();
            }
            _ => {}
        })
        .on_system_tray_event(|app, event| match event {
            SystemTrayEvent::LeftClick {
                position: _,
                size: _,
                ..
            } => app
                .get_window("main")
                .unwrap()
                .show()
                .expect("failed to show"),
            SystemTrayEvent::MenuItemClick { id, .. } => match id.as_str() {
                "quit" => {
                    std::process::exit(0);
                }
                "hide" => {
                    let window = app.get_window("main").unwrap();
                    window.hide().unwrap();
                }
                _ => {}
            },
            _ => {}
        })
        .run(generate_context!())
        .expect("failed");
}
