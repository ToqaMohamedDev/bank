import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'app/app.dart';
import 'firebase_options.dart';
import 'presention/customs/share_per.dart';

String dark = "";

void main()async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  dark = await SharePer.getData("dark");

  runApp(const MyApp());
}



