# Tatar (WIP)

A youtube music client built with tauri.

## motivation

Electron is NOT memory-efficient and is sometimes very unstable. Also, it poorly integrates to MacOS media control somehow.
Media playback in tauri is controllable from MacOS media control. In electron, when you push the play/pause button on your Bluetooth headphones, it opens iTunes because it doesn't recognize media playback in electron.

## template

This project is based on tauri project generator on yarn.

### Tauri + Vue 3

This template should help get you started developing with Tauri + Vue 3 in Vite. The template uses Vue 3 `<script setup>` SFCs, check out the [script setup docs](https://v3.vuejs.org/api/sfc-script-setup.html#sfc-script-setup) to learn more.

### Recommended IDE Setup

- [VS Code](https://code.visualstudio.com/) + [Volar](https://marketplace.visualstudio.com/items?itemName=Vue.volar) + [Tauri](https://marketplace.visualstudio.com/items?itemName=tauri-apps.tauri-vscode) + [rust-analyzer](https://marketplace.visualstudio.com/items?itemName=rust-lang.rust-analyzer)
