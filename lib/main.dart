import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:pigdog_final/login_start/firebase_options.dart';
import 'package:pigdog_final/app_pages/homepage/home_page.dart';
import 'package:pigdog_final/login_start/SignInPage.dart';
import 'package:pigdog_final/login_start/signUpPage.dart';
import 'package:pigdog_final/app_pages/pigdogs/pigdogs.dart';
import 'package:pigdog_final/app_pages/profile/profile.dart';
import 'package:pigdog_final/multiuse_style_templates/bottom_navigation_bar.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}
class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SignInPage(),
    );
  }
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
  debugShowCheckedModeBanner: false,
  title: 'Flutter',
  theme: ThemeData(
  primarySwatch: Colors.grey,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  ),
  home: MainScreen(),
  routes: <String, WidgetBuilder>{
  "/SignInPage": (BuildContext context) => SignInPage(),
  "/SignUpPage": (BuildContext context) => SignUpPage(),
  "/Groups": (BuildContext context) => Pigdogs(),
  "/Profile": (BuildContext context) => Profile(),
  "/Home": (BuildContext context) => HomePage()

  },
  );
  }
  }


//TODO add chat from https://github.com/JohannesMilke/firebase_chat_example/tree/master/lib main.dart