import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:pigdog_final/homePage.dart';
import 'package:pigdog_final/SignInPage.dart';
import 'package:pigdog_final/signUpPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
      routes: <String, WidgetBuilder>{
        "/SignInPage": (BuildContext context) => SignInPage(),
        "/SignUpPage": (BuildContext context) => SignUpPage(),
      },
    );
  }
}