package com.example.app.template

import android.os.Bundle
import android.util.Log
import com.example.app.template.config.FlavorConfig
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.android.FlutterFragmentActivity

class MainActivity: FlutterFragmentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        // Flavor 설정 사용 예시
        when (FlavorConfig.currentFlavor) {
            FlavorConfig.Flavor.DEV -> {
                // 개발 환경 설정
                println("@@@@@@@@@@@ Current Flavor: dev")
            }
            FlavorConfig.Flavor.STAG -> {
                // 스테이징 환경 설정
                println("@@@@@@@@@@@ Current Flavor: stag")
            }
            FlavorConfig.Flavor.PROD -> {
                // 프로덕션 환경 설정
                println("@@@@@@@@@@@ Current Flavor: prod")
            }
        }
    }
}

