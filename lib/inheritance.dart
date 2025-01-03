import 'package:injectable/injectable.dart';

abstract class ARepository {
  final a = "000";
}

@Injectable(as: ARepository)
class ARepositoryImpl implements ARepository {
  @override
  final a = "123";
}

@Named('ARepositoryImpl2')
@Injectable(as: ARepository)
class ARepositoryImpl2 implements ARepository {
  @override
  final a = "456";
}
