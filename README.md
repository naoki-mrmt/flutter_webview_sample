# flutter_webview_sample
English / [日本語](./documents/README-ja.md)

## Table of Contents
- [Directory Structure Design](#DirectoryStructureDesign)
- [Development](#Development)

## DirectoryStructureDesign
- [Directory Structure Design](./documents/directory_structure_design.md)

## Development

### Environmental Information
- Flutter 3.24.3-stable

### Preparation
1. Ensure that asdf is installed
    ```shell
    brew install asdf
    ```
2. Install the flutter plugin using asdf
    ```shell
    asdf plugin add flutter
    ```
3. Ensure that the jq command is installed
    ```shell
    brew install jq
    ```


### Setup
1. Clone the project
    ```shell
    https://github.com/naoki-mrmt/flutter_webview_sample.git
    cd flutter_webview_sample
    ```
2. Install Flutter using asdf
    ```shell
    make init
    ```
3. Confirm the Flutter SDK path
    ```shell
    asdf where flutter
    ```
4. Specify the Flutter SDK path
    1. Open Android Studio
    2. From the top menu, select “Android Studio” -> “Settings” (or “Preferences”)
    3. Install the [Flutter] plugin from “Plugins”
    4. Restart Android Studio
    5. Select “Languages & Frameworks” -> “Flutter”
    6. Enter the Flutter SDK path confirmed in step 3 into “Flutter SDK path”
5. Install dependencies
    ```shell
    make setup
    ```
6. Run project on your device.
    ```shell
    make run
    ```
7. Verify operation on actual devices
    Test on both iOS and Android devices


### Help
```shell
make help

init                 install flutter
setup                `flutter clean` and `flutter pub get`
install              asdf install
clean                flutter clean
pub-get              flutter pub get
run                  flutter run
help                 print this message
```