// use tauri::{
//     generate_context, generate_handler, Builder, LogicalSize, Size, WindowBuilder, WindowUrl, Menu
// };
use std;
use tauri::*;

// #![cfg_attr(
//     all(not(debug_assertions), target_os = "windows"),
//     windows_subsystem = "windows"
// )]

// Learn more about Tauri commands at https://tauri.app/v1/guides/features/command

#[tauri::command]
fn log_to_console(msg: &str) {
    println!("{}", msg);
}

fn main() {
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
        .setup(|app| {
            #[cfg(debug_assertions)]
            {
                let main_window = app.get_window("main").unwrap();
                let handle = app.handle();

                main_window
                    .eval(settings_button_injector_js)
                    .expect("failed to run the script");

                app.listen_global("open-settings", move |_| {
                    handle
                        .get_window("settings")
                        .unwrap()
                        .show()
                        .expect("could not show settings window");
                });
            }
            Ok(())
        })
        .run(generate_context!())
        .expect("failed")
}
