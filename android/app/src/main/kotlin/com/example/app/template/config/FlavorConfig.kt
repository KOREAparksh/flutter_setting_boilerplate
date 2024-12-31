package com.example.app.template.config

import com.example.app.template.BuildConfig


object FlavorConfig {
    enum class Flavor {
        DEV, STAG, PROD
    }

    val currentFlavor: Flavor by lazy {
        when (BuildConfig.FLAVOR) {
            "dev" -> Flavor.DEV
            "stag" -> Flavor.STAG
            else -> Flavor.PROD
        }
    }

    val isDebugMode: Boolean
        get() = currentFlavor == Flavor.DEV
}