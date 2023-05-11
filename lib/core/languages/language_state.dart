import 'package:equatable/equatable.dart';

abstract class LanguageState extends Equatable{
  final String localization;

  const LanguageState(this.localization);
}

class ChangeLanguageState extends LanguageState{
  const ChangeLanguageState(super.localization);

  @override
  List<Object?> get props => [localization];

}