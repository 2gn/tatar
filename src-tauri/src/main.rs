use tauri::{generate_context, generate_handler, Builder, WindowBuilder, WindowUrl, Manager};
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
            WindowBuilder::new(
                app,
                "label",
                WindowUrl::External(Url::parse("https://music.youtube.com").unwrap()),
            )
            .user_agent("Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:106.0) Gecko/20100101 Firefox/106.0")
            .build()?;
            app.get_window("main").unwrap().hide();
            Ok(())
        })
        .invoke_handler(generate_handler![log_to_console])
        .run(generate_context!())
        .expect("error while running tauri application");
}
