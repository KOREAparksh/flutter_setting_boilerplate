import org.gradle.api.JavaVersion

object Config {
    object App{
        // SDK versions
        const val COMPILE_SDK = 34
        const val MIN_SDK = 24
        const val TARGET_SDK = 34

        // App versions
        const val VERSION_CODE = 1
        const val VERSION_NAME = "1.0.0"

        // Bundle ID
        const val APPLICATION_ID = "com.example.app.template"

        // Java and JVM
        val JAVA_VERSION = JavaVersion.VERSION_17
        const val JVM_TARGET = "17"
    }

    object Flavors {
        const val DIMENSION = "flavor"

        object Dev {
            const val NAME = "dev"
            const val APPLICATION_ID_SUFFIX = ".dev"
            const val APP_NAME = "Template DEV"
        }

        object Stag {
            const val NAME = "stag"
            const val APPLICATION_ID_SUFFIX = ".stag"
            const val APP_NAME = "Template STAG"
        }

        object Prod {
            const val NAME = "prod"
            const val APPLICATION_ID_SUFFIX = ""
            const val APP_NAME = "Template"
        }
    }
}
