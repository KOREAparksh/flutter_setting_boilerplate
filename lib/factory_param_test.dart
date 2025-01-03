import 'package:injectable/injectable.dart';

@injectable
class ApiService {
  final ApiServiceHelper helper;
  final String url;
  ApiService(this.helper, @factoryParam this.url);
}

@injectable
class ApiServiceHelper {}
