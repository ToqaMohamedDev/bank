import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../data/bloc/darkmode/darkmode_cubit.dart';
import '../main.dart';
import '../presention/Splash_Screen.dart';
import '../presention/resorces/routes_manager.dart';
import '../presention/resorces/string_manager.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => DarkmodeCubit(),
      child: BlocBuilder<DarkmodeCubit, DarkmodeState>(
          builder: (BuildContext context, state) {
            return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: AppStrings.nameApp,
            theme: DarkmodeCubit.get(context).themeDatal,
            darkTheme: DarkmodeCubit.get(context).themeDatad,
            themeMode: dark == "dark" ? DarkmodeCubit.get(context).themeModed : DarkmodeCubit.get(context).themeMode,
            home:SplashScreen(),
            onGenerateRoute: RouteGenerator.getRoute,
            initialRoute: Routes.splashRoute,
          );
        }
      ),
    );
  }
  static void setSystemUIOverlayStyle(SystemUiOverlayStyle style) {
    SystemChrome.setSystemUIOverlayStyle(style);
  }
}