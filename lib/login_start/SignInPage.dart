import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key key}) : super(key: key);
  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final username = TextEditingController();
  final password = TextEditingController();
  BuildContext context;

  checkCurrentUser() async {
    _auth.authStateChanges().listen((User user) async {
      if (user != null) {
        Navigator.pushReplacementNamed(context, "/");
      }
    });
  }

  void signIn(BuildContext context) async {
    String errorMessage;
    try {
      if (username.text != "" && password.text != "") {
        UserCredential userCredential = await _auth.signInWithEmailAndPassword(
            email: username.text, password: password.text);
        print('SignIn: Sign in was successful.');
        print(userCredential);
        // Redirect to the HomePage after successful sign in
        Navigator.pushReplacementNamed(context, "/Home");
      } else {
        print('SignIn: Username or password is missing.');
        _showErrorDialog('Username or password is missing.');
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('SignIn: No user found for that email.');
        errorMessage = 'No user found for that email.';
      } else if (e.code == 'wrong-password') {
        print('SignIn: Wrong password provided for that user.');
        errorMessage = 'Wrong password provided for that user.';
        // Redirect to the SignInPage again after unsuccessful sign in
      } else {
        errorMessage = 'An error occurred. Please try again.';
      }
      print('SignIn: $errorMessage');
      _showErrorDialog(errorMessage);
    }
  }
  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text('Error'),
        content: Text(message),
        actions: <Widget>[
          TextButton(
            child: Text('Okay'),
            onPressed: () {
              Navigator.of(ctx).pop();
            },
          ),
        ],
      ),
    );
  }

  toSignUp() async {
    Navigator.pushReplacementNamed(context, "/SignUpPage");
  }

  @override
  void initState() {
    super.initState();
    this.checkCurrentUser();
  }

  @override
  void dispose() {
    super.dispose();
    username.dispose();
    password.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(16),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: username,
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'E-mail/Username',
                ),
              ),
              TextField(
                controller: password,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Password',
                ),
              ),
              ElevatedButton(
                onPressed: () => signIn(context), // Pass context here
                child: Text('Sign-in'),
              ),
              Text("Do you have an account? If you don't, please sign up!"),
              GestureDetector(
                onTap: () {
                  toSignUp();
                },
                child: Text(
                  "Sign Up!",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}