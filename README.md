# Flutter Web Admin Portal

Responsive web with light/dark mode and multi language supported. The objective of this project is to develop an admin portal website with Flutter v3 (SDK version 3.10.1).


https://user-images.githubusercontent.com/12734486/174944388-5b80f3c6-187a-4e98-89e3-34180ac61379.mp4


## Live Preview
[Website Demo](https://kcflutterwebadmin.surge.sh)

Login with demo account:\
Username: admin\
Password: admin


## Challenges
- Responsive layout: Common requirement for web project nowadays. Not an issue with Flutter. Somehow I miss the grid system in Bootstrap.
- Light/dark mode: With this requirement, I have to deep dive into Flutter Theme and learn how to properly define theme and styles for the project.
- Multi language: Also a common requirement for web project 😴.
- Navigation: We know that Flutter Navigator 2.0 is complicated to implement, thanks to [go_router](https://pub.dev/packages/go_router) package for reduce the complexity of development.
- State management: I use [provider](https://pub.dev/packages/provider) package to manage user login state and website configs such as theme mode and language.
- iFrame: iFrame is commonly used to display map, video etc on webpage. Unfortunately it does not work well with mouse pointer. I have to do some hack to "solve" the mouse pointer interceptor issue 😥.

## My experience with this project
**The good 😃:**
- Single code base for all. You can create beautiful and responsive webpage without HTML + JS + CSS, just Dart.
- No need to worry CSS compatibility issue on different web browsers.
- You can easily convert the web project to support other platforms like MacOS, Windows (Ya I know Electron can convert web project to desktop app too).
- Many packages are supporting web platform.

**The bad 😥:**
- Slow to load at first time. Webpage takes around 3-5 seconds to load as it required to download resources. It is getting worst with slow internet connection speed. 
- Performance. You will face UI jank on complex webpage.
- Cannot inspect elements. As a web developer, we often use the web browser's developer tools to inspect elements in webpage, but unfortunately we can't do this with Flutter Web due to everything is draw on canvas. Wait, maybe it is also a good thing as nobody can copy/claw your content 🤔?
- No text selection, right click context menu, horizontal scrolling with mouse wheel support by default.
- Text/font rendering issue and UI blurry on PWA/desktop web browser.

Overall, this project development experience was pleasant for me. And I'm looking forward to seeing how Flutter Web will evolve in future releases.


Feel free to fork/clone this project and do whatever you wan 😄
