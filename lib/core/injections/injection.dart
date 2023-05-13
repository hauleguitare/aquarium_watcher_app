import 'package:aquarium_watcher_app/common/services/shared_preferences_services.dart';
import 'package:aquarium_watcher_app/core/abstractions/services/dio_client_service.dart';
import 'package:aquarium_watcher_app/core/abstractions/services/share_preferences_service.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

class InjectorProvider {
  static final GetIt _getItInstance = GetIt.I;

  static setup(){
    // -------- Shared Preferences -------- //
    _getItInstance.registerSingletonAsync<SharedPreferences>(() => SharedPreferences.getInstance());


    // -------- Shared Preferences -------- //
    _getItInstance.registerLazySingletonAsync<SharedPreferencesService>(() async {
        await _getItInstance.isReady<SharedPreferences>();

        final sharedPreferences = await _getItInstance.getAsync<SharedPreferences>();
        return SharedPreferencesServiceImpl(sharedPreferences);
    });

    // -------- Dio Client Service -------- //
    _getItInstance.registerLazySingletonAsync<DioClientService>(() => )

  }


  static GetIt getInstance(){
    return _getItInstance;
  }
}