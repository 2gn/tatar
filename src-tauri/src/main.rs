use tauri::{generate_context, Builder, Manager, WebviewAttributes, WindowBuilder, WindowUrl};
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

fn main() {
    Builder::default()
        .setup(|app| {
            let window = tauri::WindowBuilder::new(
                app,
                "label",
                tauri::WindowUrl::External(Url::parse("https://music.youtube.com").unwrap()),
            )
            .user_agent(
                "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36"
            )
            .build()?;
            // app.get_window("main").unwrap().close();
            Ok(())
        })
        .invoke_handler(tauri::generate_handler![log_to_console])
        .run(generate_context!())
        .expect("error while running tauri application");
}
