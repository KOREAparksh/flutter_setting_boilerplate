import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'configurations.config.dart';

final getIt = GetIt.instance;

@injectableInit
void configureDependencies({String? environment}) => getIt.init(environment: environment);