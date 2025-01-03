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

## How to Add Config/Key Value in Native Code
##### Use Config Object
- Open buildSrc/src/.../Config.kt
- Add value in App. If the value is different for each flavor, set it in Flavor.
- Open app level's build.gradle.kts 
- Add resValue sentence in productFlavors.

##### Use String.xml
- Open each string.xml files
- Add values

### iOS
- Open ios/Flutter/{Flavor}.xcconfig
- Add values
- Open Runner/info.plist
- Add Key and string
  ```plist
	<key>FLAVOR</key>
	<string>$(FLAVOR)</string>
  ```
