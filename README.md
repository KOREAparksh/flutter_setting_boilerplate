# Index
---
- [Index](#index)
- [Content](#content)
  - [Flavor](#flavor)
- [FAQ](#faq)
  - [How to run](#how-to-run)
      - [VSCode](#vscode)
      - [CLI](#cli)
  - [How to Change Application Id / Bundle Id](#how-to-change-application-id--bundle-id)
      - [AOS](#aos)
      - [iOS](#ios)
  - [How to Change App Name](#how-to-change-app-name)
      - [AOS](#aos-1)
      - [iOS](#ios-1)
  - [How to Change App Icon](#how-to-change-app-icon)
      - [AOS](#aos-2)
      - [iOS](#ios-2)
  - [How to Add Config/Key Value in Native Code](#how-to-add-configkey-value-in-native-code)
      - [Android](#android)
      - [iOS](#ios-3)

# Content
## Flavor
- The flavors are divided into three categories below:
  - dev
  - stag
  - prod
- If you need to add more flavors, you must make it the same way as other settings.

# FAQ
## How to run 
#### VSCode
- Just run from launch.json

#### CLI
- Modify the `flavor` in the text below And run
- ```flutter run --flavor {flavor} --dart-define-from-file=env/config_{flavor}.json```


## How to Change Application Id / Bundle Id
#### AOS
- Move android/buildSrc/src/main/kotlin/Config.kt
- Change `APPLICATION_ID` in Config object

#### iOS
- Open Xcode
- Open (Target Runner) and move build settings
- Find `Product name` and change name 


## How to Change App Name
#### AOS
- Move android/buildSrc/src/main/kotlin/Config.kt
- Change `APP_NAME` in Config.Flavor object

#### iOS
- Open Xcode
- Open (Target Runner) and move build settings
- Find `Product Bundle Identifier` and change ids


## How to Change App Icon
#### AOS
- Move android/src/{`flavor`}/res
- Change `ic_launcher` PNG files

#### iOS
- Open Xcode
- Click Asset at Side Bar
- Find `AppIcon-{Flavor}` and change images

## How to Add Config/Key Value in Native Code
#### Android
- **Use Config Object**
  - Open buildSrc/src/.../Config.kt
  - Add value in App. If the value is different for each flavor, set it in Flavor.
  - Open app level's build.gradle.kts 
  - Add resValue sentence in productFlavors.

- **Use String.xml**
  - Open each string.xml files
  - Add values

#### iOS
- Open ios/Flutter/{Flavor}.xcconfig
- Add values
- Open Runner/info.plist
- Add Key and string
  ```plist
	<key>FLAVOR</key>
	<string>$(FLAVOR)</string>
  ```
