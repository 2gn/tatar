// import { createApp } from "vue";
// import "./style.css";
// import App from "./App.vue";
import { invoke } from "@tauri-apps/api/tauri";

// createApp(App).mount("#app");
navigator.__defineGetter__("userAgent", () => {
  return "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36";
});
document.location = "https://music.youtube.com";
console.log(
  "user agent will be printed. this message is shown only to javascript console and will not be printed out to terminal"
);
invoke("log_to_console", navigator.userAgent);
invoke("log_to_console", "was the user agent printed correctly?");
