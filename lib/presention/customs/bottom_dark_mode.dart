import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/bloc/darkmode/darkmode_cubit.dart';


class BottomDarkMode extends StatelessWidget {
  const BottomDarkMode({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DarkmodeCubit, DarkmodeState>(
      builder: (BuildContext context, state) {
        return InkWell(
          borderRadius: BorderRadius.circular(100),
          onTap: (){
            var value=!DarkmodeCubit.get(context).isDarkModeEnabled;
            DarkmodeCubit.get(context).updateTheme(value);
          },
          child: Container(
            width: 15,
            height: 40,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(100)
            ),
            child: Icon(DarkmodeCubit.get(context).isDarkModeEnabled?Icons.dark_mode:Icons.sunny,size: 27,),
          ),
        );
      },
    );
  }
}
