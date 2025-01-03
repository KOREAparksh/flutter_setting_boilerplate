import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
class AsyncRepository {
  final a = 1;

  @factoryMethod
  static Future<AsyncRepository> from() async {
    debugPrint("@@@@@@ AsyncRepository from");
    await Future.delayed(const Duration(seconds: 1));
    return AsyncRepository();
  }
}
