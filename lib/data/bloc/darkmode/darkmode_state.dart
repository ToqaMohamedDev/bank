part of 'darkmode_cubit.dart';

@immutable
abstract class DarkmodeState {}

class DarkmodeInitial extends DarkmodeState {}

class darkmode extends DarkmodeState {}
class updateThememode extends DarkmodeState {}
class changeLan extends DarkmodeState {}