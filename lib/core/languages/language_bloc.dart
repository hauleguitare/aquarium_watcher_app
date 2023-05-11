import 'package:aquarium_watcher_app/core/languages/language_event.dart';
import 'package:aquarium_watcher_app/core/languages/language_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LanguageBloc extends Bloc<LanguageEvent, LanguageState>{
  LanguageBloc(super.initialState){
    on<VIChangeLanguageEvent>((event, emit) => emit(const ChangeLanguageState("vi")));
    on<ENChangeLanguageEvent>((event, emit) => emit(const ChangeLanguageState("en")));
  }
}