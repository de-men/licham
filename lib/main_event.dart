import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

abstract class MainEvent extends Equatable {
  MainEvent([List props = const []]) : super(props);
}

class AppStarted extends MainEvent {
  @override
  String toString() => 'AppStarted';
}

class SolarChanged extends MainEvent {
  @override
  String toString() => 'SolarChanged';
}

class LunarChanged extends MainEvent {
  @override
  String toString() => 'LunarChanged';
}

class TodaySelected extends MainEvent {
  @override
  String toString() => 'TodaySelected';
}

class PreviousSelected extends MainEvent {
  @override
  String toString() => 'PreviousSelected';
}

class NextSelected extends MainEvent {
  @override
  String toString() => 'NextSelected';
}

class SolarSelected extends MainEvent {
  final DateTime solar;

  SolarSelected({@required this.solar}) : super([solar]);

  @override
  String toString() => 'SolarSelected { solar: $solar }';
}

class LunarSelected extends MainEvent {
  final String lunar;

  LunarSelected({@required this.lunar}) : super([lunar]);

  @override
  String toString() => 'LunarSelected { lunar: $lunar }';
}
