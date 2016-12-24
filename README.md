# Zeal-macOS

To avoid unnecessary conflit with Dash, Zeal has been made hard to use on macOS. But with some minor patches you can easily maintain your own build of Zeal.

## Requirements   
 - Qt 5 with QtWebEngine or QtWebView
 - libarchive

## My Environment
 - macOS 10.12.2
 - Qt 5.7.1
 - libarchive

## Build Instructions
 1. Get and install Qt5.
 2. Install libarchive. This step can be done easily by [homebrew](http://brew.sh).
 ```bash
 brew install libarchive
 ```
 3. Get the code of [Zeal](https://github.com/zealdocs/zeal) if you want to build the latest version.
 ```bash
 git clone https://github.com/zealdocs/zeal.git
 ```
Or clone this patched repository
```
git clone https://github.com/xavieryao/Zeal-macOS.git
```
 4. (Optional) Make some slight modifications to compile on macOS, if you are building the original version source code. You can skip this step if you cloned this repository.

  * Link libarchive. In `src/libs/core/core.pri` add
  ```
  macx: {
      INCLUDEPATH += /usr/local/Cellar/libarchive/3.2.2/include
      LIBS += -L/usr/local/Cellar/libarchive/3.2.2/lib -larchive
  }
  ```
  * Link sqlite3. In `/src/libs/util/util.pri` add
  ```
  macx: {
      LIBS += -lsqlite3
  }
  ```

5. Build. In Qt Creator, use `Release` profile and build. You will find a `Zeal.app` if it has been built successfully.

## Original Readme of Zeal

see [ZEAL_README.md]()
