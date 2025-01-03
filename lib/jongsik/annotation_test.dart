import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
class StringUtils {
  int a = 0;
  // implement this
  @postConstruct
  void init() {
    debugPrint('@@@@@@@@ init injectable');
  }

  void increment() {
    a++;
  }
}

@singleton
class SingleStringUtils {
  int a = 0;
  // implement this
  @postConstruct
  void init() {
    debugPrint('@@@@@@@@ init singleton');
  }

  void increment() {
    a++;
  }

  @disposeMethod
  void dispose() {
    debugPrint('@@@@@@@@ dispose singleton');
  }
}

@lazySingleton
class LazyStringUtils {
  int a = 0;
  // implement this
  @postConstruct
  void init() {
    debugPrint('@@@@@@@@ init lazySingleton');
  }

  void increment() {
    a++;
  }
}
