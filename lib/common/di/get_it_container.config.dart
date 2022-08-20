// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../http/rest_client.dart' as _i6;
import '../storage/secure_storage.dart' as _i3;
import '../storage/shared_pref_service.dart' as _i4;
import 'dio_module.dart' as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerDio = _$RegisterDio();
  gh.lazySingleton<_i3.SecureStorage>(() => _i3.SecureStorage());
  gh.lazySingleton<_i4.SharedPrefService>(() => _i4.SharedPrefService());
  gh.factory<String>(() => registerDio.baseUrl, instanceName: 'BaseUrl');
  gh.lazySingleton<_i5.Dio>(
      () => registerDio.dio(get<String>(instanceName: 'BaseUrl')));
  gh.factory<_i6.RestClient>(() => _i6.RestClient(get<_i5.Dio>()));
  return get;
}

class _$RegisterDio extends _i7.RegisterDio {}
