import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../app/app.dart';
import '../../../main.dart';
import '../../../presention/customs/share_per.dart';
import '../../../presention/resorces/color_app.dart';

part 'darkmode_state.dart';

class DarkmodeCubit extends Cubit<DarkmodeState> {
  DarkmodeCubit() : super(DarkmodeInitial());
  static DarkmodeCubit get(context) => BlocProvider.of(context);
  bool isDarkModeEnabled =dark=="dark"?true: false;
  ThemeMode themeMode=ThemeMode.light;
  ThemeMode themeModed=ThemeMode.dark;

  void updateTheme(bool dark) {
    if (dark) {
      isDarkModeEnabled = dark;
      themeMode=ThemeMode.dark;
      themeModed=ThemeMode.dark;
      SharePer.saveData("dark", "dark");
      MyApp.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
        systemNavigationBarColor: Colors.grey[900]!,
        statusBarIconBrightness: Brightness.light,
      ));
      emit(updateThememode());
    } else {
      isDarkModeEnabled = dark;
      themeMode=ThemeMode.light;
      themeModed=ThemeMode.light;
      SharePer.saveData("dark", "NA");
      MyApp.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
        systemNavigationBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
      ));
      emit(updateThememode());
    }
  }
  ThemeData themeDatal = ThemeData(
      scaffoldBackgroundColor: ColorManager.whiteColor,
      brightness: Brightness.light,
      hoverColor: ColorManager.whiteColor,
      colorScheme:ColorScheme.light(
        primary:ColorManager.whiteColor ,
        secondary:Colors.black,
        onSecondary: Colors.grey[300]!,
      ),

      appBarTheme: AppBarTheme(
        color: ColorManager.whiteColor,
      ));
  ThemeData themeDatad = ThemeData(
      scaffoldBackgroundColor: ColorManager.mainColor.withOpacity(0.2),
      brightness: Brightness.dark,
      hoverColor: ColorManager.blackColor,
      canvasColor: ColorManager.BMapColor,
      colorScheme:ColorScheme.dark(
        primary: Colors.grey[900]! ,
        secondary:Colors.white ,
        onSecondary: Colors.grey[850]!,
      ),
      appBarTheme: AppBarTheme(
        color: ColorManager.blackColor.withOpacity(0.1),
      ));
}