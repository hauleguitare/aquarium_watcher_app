import 'package:aquarium_watcher_app/start_up_widget.dart';
import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

import 'core/injection/injection.dart';

void main() {
  configureLogging();
  InjectorProvider.setup();
  runApp(const StartupWidget());
}


void configureLogging(){
  // Config Level Logging
  Logger.root.level = Level.ALL;

  Logger.root.onRecord.listen((record) {
    print('${record.loggerName}: ${record.level.name}: ${record.time}: ${record.message}');
  });
}


