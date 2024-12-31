plugins {
    id("com.android.application")
    id("kotlin-android")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
}

android {
    // 버전 설정
    namespace = Config.App.APPLICATION_ID
    compileSdk = Config.App.COMPILE_SDK
    ndkVersion = flutter.ndkVersion

    compileOptions {
        sourceCompatibility = Config.App.JAVA_VERSION
        targetCompatibility = Config.App.JAVA_VERSION
    }

    kotlinOptions {
        jvmTarget = Config.App.JVM_TARGET
    }

    defaultConfig {
        applicationId =  Config.App.APPLICATION_ID
        minSdk = Config.App.MIN_SDK
        targetSdk = Config.App.TARGET_SDK
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    // Build 설정
    buildTypes {
        release {
            signingConfig = signingConfigs.getByName("debug")
        }
    }
    buildFeatures {
        buildConfig = true
    }

    // Flavor 설정
    flavorDimensions += Config.Flavors.DIMENSION
    productFlavors {
        create(Config.Flavors.Dev.NAME) {
            dimension = Config.Flavors.DIMENSION
            applicationIdSuffix = Config.Flavors.Dev.APPLICATION_ID_SUFFIX
            resValue("string", "app_name", Config.Flavors.Dev.APP_NAME)
        }

        create(Config.Flavors.Stag.NAME) {
            dimension = Config.Flavors.DIMENSION
            applicationIdSuffix = Config.Flavors.Stag.APPLICATION_ID_SUFFIX
            resValue("string", "app_name", Config.Flavors.Stag.APP_NAME)
        }

        create(Config.Flavors.Prod.NAME) {
            dimension = Config.Flavors.DIMENSION
            resValue("string", "app_name", Config.Flavors.Prod.APP_NAME)
        }
    }
}

flutter {
    source = "../.."
}
