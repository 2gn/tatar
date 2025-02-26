<h1 align="center">
    <img src="./src-tauri/icons/icon.png" width=128 height=128/><br>
    tatar
</h1>

<h4 align="center">
    A youtube music client built with tauri.
</h4>

# IMPORTANT NOTES
This project is deprecated, and I'm working on newer version with latest tauri. You can still compile and run the app.

## Features
Slightly less memory usage compared to other YouTube music clients that displays https://music.youtube.com as their interface.

The app is electron-free so the installation size will be much smaller.

Runs natively on wayland

 
## Download
You can download executables from [releases]("https://github.com/2gn/tatar/releases")

## Building
### Debian
I had to install these additional packages system-wide
* libssl-dev
* libwebkit2gtk-4.0-dev
* libjavascriptcoregtk-4.0-dev

## Contributions
Since YouTube Music itself is feature-complete as a web app, desktop application is not really needed. Still, there are some ideas:
* Custom CSS Injection
    * Ability to apply dracula theme to YouTube Music (I guess other ytm desktop applications already have this)


## Screenshots

![screenshot](./screenshots/1.png)

![screenshot](./screenshots/2.png)

![screenshot](./screenshots/3.png)

## FAQ

### I cannot quit the app
On windows and Linux, from the system tray, right-click on the tatar icon and select `Quit`

