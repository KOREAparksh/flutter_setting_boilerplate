// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:template/a_view_model.dart' as _i278;
import 'package:template/annotation_test.dart' as _i849;
import 'package:template/async_injectable.dart' as _i0;
import 'package:template/env_test.dart' as _i668;
import 'package:template/factory_param_test.dart' as _i54;
import 'package:template/inheritance.dart' as _i434;

const String _prod = 'prod';

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i278.AViewModelHelper>(() => _i278.AViewModelHelper());
    gh.factory<_i849.StringUtils>(() => _i849.StringUtils()..init());
    gh.factory<_i54.ApiServiceHelper>(() => _i54.ApiServiceHelper());
    gh.factoryAsync<_i0.AsyncRepository>(() => _i0.AsyncRepository.from());
    gh.singleton<_i849.SingleStringUtils>(
      () => _i849.SingleStringUtils()..init(),
      dispose: (i) => i.dispose(),
    );
    gh.lazySingleton<_i849.LazyStringUtils>(() => _i849.LazyStringUtils()..init());
    gh.factory<_i434.ARepository>(() => _i434.ARepositoryImpl());
    gh.factory<_i278.AViewModel>(() => _i278.AViewModel(gh<_i278.AViewModelHelper>()));
    gh.factory<_i434.ARepository>(
      () => _i434.ARepositoryImpl2(),
      instanceName: 'ARepositoryImpl2',
    );
    gh.factory<_i668.EnvRepository>(
      () => _i668.EnvRepositoryImplProd(),
      registerFor: {_prod},
    );
    gh.factoryParam<_i54.ApiService, String, dynamic>((
      url,
      _,
    ) =>
        _i54.ApiService(
          gh<_i54.ApiServiceHelper>(),
          url,
        ));
    return this;
  }
}
