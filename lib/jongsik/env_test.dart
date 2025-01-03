import 'package:injectable/injectable.dart';

import 'core/config/flavor.dart';

abstract class EnvRepository {
  final a = "000";
}

@Environment(Flavor.dev)
@Environment(Flavor.stag)
@test
@dev
class EnvRepositoryImplDev implements EnvRepository {
  @override
  final a = "123";
}

@Environment(Flavor.prod)
@Injectable(as: EnvRepository)
class EnvRepositoryImplProd implements EnvRepository {
  @override
  final a = "456";
}
