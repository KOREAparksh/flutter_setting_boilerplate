// di/modules/app_module.dart
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class RegisterModule {
  // Dio 인스턴스 제공
  @singleton
  Dio dio() {
    return Dio(
      BaseOptions(
        baseUrl: 'https://api.example.com',
        connectTimeout: const Duration(seconds: 5),
        receiveTimeout: const Duration(seconds: 3),
      ),
    )..interceptors.add(
        LogInterceptor(
          request: true,
          responseBody: true,
        ),
      );
  }

  // SharedPreferences 인스턴스 제공
  @singleton
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();
}

@singleton
class ApiClient {
  final Dio _dio;

  ApiClient(this._dio);

  Future<dynamic> get(String path) async {
    try {
      final response = await _dio.get(path);
      return response.data;
    } catch (e) {
      rethrow;
    }
  }
}

@singleton
class SettingsService {
  final SharedPreferences _prefs;

  SettingsService(this._prefs);

  Future<void> saveThemeMode(bool isDark) async {
    await _prefs.setBool('isDarkMode', isDark);
  }

  bool getThemeMode() {
    return _prefs.getBool('isDarkMode') ?? false;
  }
}
