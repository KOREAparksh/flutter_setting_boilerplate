import 'dart:math';

import 'package:flutter/material.dart';

import 'jongsik/annotation_test.dart';
import 'jongsik/async_injectable.dart';
import 'jongsik/core/config/config.dart';
import 'jongsik/core/config/flavor.dart';
import 'jongsik/core/configurations/configurations.dart';
import 'jongsik/env_test.dart';
import 'jongsik/factory_param_test.dart';
import 'jongsik/inheritance.dart';

void main() {
  configureDependencies(environment: Flavor.prod);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({required this.title, super.key});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final int _counter = 0;
  String flavor = "none";

  // * ============================
  // * 종식
  // * ============================
  // void injectableSingletoneLazyTest() async {
  //   final injectable1 = getIt<StringUtils>();
  //   injectable1.increment();
  //   injectable1.increment();
  //   debugPrint("@@@@@@@@ injectable 1: ${injectable1.a}");
  //   final injectable2 = getIt<StringUtils>();
  //   injectable2.increment();
  //   debugPrint("@@@@@@@@ injectable 2: ${injectable2.a}");
  //   final singletone1 = getIt<SingleStringUtils>();
  //   singletone1.increment();
  //   singletone1.increment();
  //   debugPrint("@@@@@@@@ singletone1 : ${singletone1.a}");
  //   final singletone2 = getIt<SingleStringUtils>();
  //   singletone2.increment();
  //   debugPrint("@@@@@@@@ singletone2: ${singletone2.a}");
  //   final lazy1 = getIt<LazyStringUtils>();
  //   lazy1.increment();
  //   lazy1.increment();
  //   debugPrint("@@@@@@@@ lazy1: ${lazy1.a}");
  //   final lazy2 = getIt<LazyStringUtils>();
  //   lazy2.increment();
  //   debugPrint("@@@@@@@@ lazy2: ${lazy2.a}");
  //   setState(() {
  //     _counter++;
  //   });
  // }

  // void asyncInjectableTest() async {
  //   final a = await getIt.getAsync<AsyncRepository>();
  //   debugPrint("@@@@@@@@ a.a: ${a.a}");
  //   setState(() {
  //     _counter++;
  //   });
  // }

  // void inheritanceAndName() {
  //   final a = getIt.get<ARepository>();
  //   debugPrint("@@@@@@@@ a.a: ${a.a}");
  //   setState(() {
  //     _counter++;
  //   });
  // }

  // void env() {
  //   final a = getIt.get<EnvRepository>();
  //   debugPrint("@@@@@@@@ a.a: ${a.a}");
  //   setState(() {
  //     _counter++;
  //   });
  // }

  // * ============================
  // * 압둘
  // * ============================

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 300), () {
      flavor = const String.fromEnvironment('FLAVOR', defaultValue: 'err');
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Flavor: $flavor',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // onPressed: injectableSingletoneLazyTest,
        // onPressed: asyncInjectableTest,
        // onPressed: inheritanceAndName,
        // onPressed: env,
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
