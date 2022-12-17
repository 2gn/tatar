// use tauri::{
//     generate_context, generate_handler, Builder, LogicalSize, Size, WindowBuilder, WindowUrl, Menu
// };
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
    Builder::default()
        .invoke_handler(generate_handler![log_to_console])
        .menu(Menu::with_items([
            MenuItem::SelectAll.into(),
            CustomMenuItem::new("toggle-dev-tools", "Toggle DevTools").into(),
        ]))
        .on_window_event(|event| match event.event() {
            WindowEvent::Focused(focused) => {
                if !focused {
                    println!("unfocused")
                } else {
                    println!("focused");
                }
            }
            _ => {}
        })
        .run(generate_context!())
        .expect("error while running tauri application");
}
