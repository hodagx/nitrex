import 'package:flutter/material.dart';

// import 'LoginPages/Termsofuse.dart';
import 'LoginPages/LoginPage.dart';
// import 'LoginPages/SignupPage.dart';
// import 'LoginPages/ForgotPassword.dart';
// import 'LoginPages/EmailSent.dart';
// import 'LoginPages/ResetPassword.dart';
// import 'LoginPages/ResetLink.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  // // login page parameters:
  // // primary swatch color
  // static const primarySwatch = Colors.green;
  // // button color
  // static const buttonColor = Colors.green;
  // // app name
  // static const appName = 'My App';
  // // boolean for showing home page if user unverified
  // static const homePageUnverified = false;

  // final params = {
  //   'appName': appName,
  //   'primarySwatch': primarySwatch,
  //   'buttonColor': buttonColor,
  //   'homePageUnverified': homePageUnverified,
  // };

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Nitrex',
        debugShowCheckedModeBanner: false,
        theme: new ThemeData(),
        // home: new RootPage(params: params, auth: new Auth()));
        home: LoginPage()
        // home: SignupPage()
        // home: ForgotPassword(),
        // home: ResetPassword(),
        // home: EmailSent(),
        // home: ResetLink(),
        // home: Termsofuse(),
        );
  }
}
