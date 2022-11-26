import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:adobe_xd/pinned.dart';
import '../../style_templates/header_box.dart';
import '../../style_templates/status_barlight.dart';
import '../../style_templates/button_small_not_pressed.dart';
import '../../style_templates/button_small_pressed.dart';
import 'package:adobe_xd/page_link.dart';
import '../../style_templates/trainingsbox.dart';
import 'package:flutter_svg/flutter_svg.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  User user;
  bool isSignedIn = false;
  BuildContext context;

  checkSignInStatus() async {
    _auth.authStateChanges().listen((User user) {
      if (user == null) {
        Navigator.pushReplacementNamed(context, "/SignInPage");
      }
    });
  }

  getInfo() async {
    _auth.authStateChanges().listen((User user) {
      if (this.user != null) {
        setState(() {
          this.user = user;
          this.isSignedIn = true;
        });
      }
    });
  }

  signOut() {
    _auth.signOut();
    print('SignOut: Sign out was successful.');
  }

  @override
  void initState() {
    super.initState();
    this.checkSignInStatus();
    this.getInfo();
  }

  @override
  Widget build(BuildContext context) {
    setState(() => this.context = context);
    return Scaffold(
      /* body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('HomePage'),
      */);
  }
}
