# flutter_webview_sample
[English](../README.md) / 日本語

## 目次
- [ディレクトリ構造の設計思想](#ディレクトリ構造の設計思想)
- [開発](#開発)

## ディレクトリ構造の設計思想
- [ディレクトリ構造の設計思想](./directory_structure_design-ja.md)

## 開発

### 環境情報
- Flutter 3.24.3-stable

### 事前準備
1. asdfをインストールしていること
    ```shell
    brew install asdf
    ```
2. asdfでflutterプラグインをインストールしていること
    ```shell
    asdf plugin add flutter
    ```
3. jqコマンドをインストールしていること
    ```shell
    brew install jq
    ```

### セットアップ
1. プロジェクトのクローン
    ```shell
    https://github.com/naoki-mrmt/flutter_webview_sample.git
    cd flutter_webview_sample    
    ```
2. asdf を使用して Flutter をインストールする
    ```shell
    make init
    ```
3. Flutter SDK パスを確認する
    ```shell
    asdf where flutter
    ```
4. Flutter SDK パスを指定する
    1. Android Studio を開く
    2. 上部メニューから「Android Studio」 -> 「Settings」 (または「Preferences」) を選択
    3. 「Plugins」から[Flutter]のpluginをインストール
    4. AndroidStudioを再起動
    4. 「Languages & Frameworks」 -> 「Flutter」を選択
    5. 「Flutter SDK path」に手順3で確認したFlutter SDKのパスを入力
5. 依存関係をインストールする
    ```shell
    make setup
    ```
6. 実機でプロジェクトを実行する
    ```shell
    make run
    ```
7. 実機で動作確認をする
    iOS, Androidの端末で確認をすること

### ヘルプ
```shell
make help

init                 install flutter
setup                `flutter clean` and `flutter pub get`
install              asdf install
clean                flutter clean
pub-get              flutter pub get
help                 print this message
```
