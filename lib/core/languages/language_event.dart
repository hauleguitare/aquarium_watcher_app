import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

@immutable
abstract class LanguageEvent extends Equatable{}


class VIChangeLanguageEvent extends LanguageEvent{
  @override
  List<Object?> get props => [];
}

class ENChangeLanguageEvent extends LanguageEvent{
  @override
  // TODO: implement props
  List<Object?> get props => [];

}