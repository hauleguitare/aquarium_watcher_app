import 'package:aquarium_watcher_app/common/dataSource/data_source_impl.dart';
import 'package:aquarium_watcher_app/common/services/shared_preferences_services.dart';
import 'package:aquarium_watcher_app/core/abstractions/dataSource/data_source.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

class InjectorProvider {
  static final GetIt _getItInstance = GetIt.I;

  static setup(){
    // -------- Shared Preferences -------- //
    _getItInstance.registerSingletonAsync<SharedPreferences>(() => SharedPreferences.getInstance());


    // -------- Shared Preferences -------- //
    _getItInstance.registerLazySingletonAsync(() async {
        await _getItInstance.isReady<SharedPreferences>();

        final sharedPreferences = await _getItInstance.getAsync<SharedPreferences>();
        return SharedPreferencesService(sharedPreferences);
    });
  }


  static GetIt getInstance(){
    return _getItInstance;
  }
}