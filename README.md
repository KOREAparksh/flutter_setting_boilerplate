## How to Change Application Id / Bundle Id
### AOS
- Move android/buildSrc/src/main/kotlin/Config.kt
- Change `APPLICATION_ID` in Config object

### iOS
- Open Xcode
- Open (Target Runner) and move build settings
- Find `Product name` and change name 


## How to Change App Name
### AOS
- Move android/buildSrc/src/main/kotlin/Config.kt
- Change `APP_NAME` in Config.Flavor object

### iOS
- Open Xcode
- Open (Target Runner) and move build settings
- Find `Product Bundle Identifier` and change ids


## How to Change App Icon
### AOS
- Move android/src/{`flavor`}/res
- Change `ic_launcher` PNG files

### iOS
- Open Xcode
- Click Asset at Side Bar
- Find `AppIcon-{Flavor}` and change images
