import 'package:aquarium_watcher_app/common/services/shared_preferences_services.dart';
import 'package:aquarium_watcher_app/core/injections/injection.dart';
import 'package:aquarium_watcher_app/start_up_widget.dart';
import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:shared_preferences/shared_preferences.dart';


void main() async{
  configureLogging();
  InjectorProvider.setup();
  runApp(const StartupWidget());


  var locator = InjectorProvider.getInstance();
}


void configureLogging(){
  // Config Level Logging
  Logger.root.level = Level.ALL;

  Logger.root.onRecord.listen((record) {
    print('${record.loggerName}: ${record.level.name}: ${record.time}: ${record.message}');
  });
}


