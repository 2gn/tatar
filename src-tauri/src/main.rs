// use tauri::{
//     generate_context, generate_handler, Builder, LogicalSize, Size, WindowBuilder, WindowUrl, Menu
// };
use tauri::*;
use url::Url;

// #![cfg_attr(
//     all(not(debug_assertions), target_os = "windows"),
//     windows_subsystem = "windows"
// )]

// Learn more about Tauri commands at https://tauri.app/v1/guides/features/command

#[tauri::command]
fn log_to_console(msg: &str) {
    println!("{}", msg);
}

fn logical_size(width: f64, height: f64) -> Option<Size> {
    Some(Size::Logical(LogicalSize { width, height }))
}

fn main() {
    Builder::default()
        .setup(|app| {
            let window = WindowBuilder::new(
                app,
                "label",
                WindowUrl::External(Url::parse("https://music.youtube.com").unwrap())
            )
            .user_agent("Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:106.0) Gecko/20100101 Firefox/106.0")
            .build()?;
            window.set_min_size(
                logical_size(
                    320.,
                    320.
                )
            )?;
            Ok(())
        })
        .invoke_handler(generate_handler![log_to_console])
        .menu(
            Menu::with_items([
                MenuItem::SelectAll.into(),
                CustomMenuItem::new(
                    "toggle-dev-tools",
                    "Toggle DevTools"
                ).into()
            ])
        )
        .on_window_event(|event| match event.event() {
            WindowEvent::Focused(focused) => {
                if !focused {
                    println!("unfocused")
                } else {
                    println!("focused");
                }
            }
            WindowEvent::Destroyed => {

            }
            _ => {}
        })
        .run(generate_context!())
        .expect("error while running tauri application");
}
