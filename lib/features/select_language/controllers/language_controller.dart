import 'package:aquarium_watcher_app/core/languages/language_event.dart';
import 'package:aquarium_watcher_app/core/languages/language_state.dart';
import 'package:aquarium_watcher_app/features/select_language/view/widgets/select_language_modal_bottom_sheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LanguageController extends ChangeNotifier {
  late LanguageEvent event;
  late void Function(LanguageState) onChangeState;
  LanguageController();

  void changeLanguage(LanguageEvent event){
    this.event = event;
    notifyListeners();
  }

  set setOnChangeState(void Function(LanguageState) callBackFn){
    onChangeState = callBackFn;
  }

  void showLanguageModalBottomSheet(BuildContext context){
    showModalBottomSheet<void>(
        context: context,
        builder: (BuildContext context) {
          return SelectLanguageModalBottomSheet(
            controller: this,
          );
        });
  }

}

