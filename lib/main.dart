import 'package:auth_project/Screens/Welcome/welcome_screen.dart';
import 'package:auth_project/Screens/Welcome/drawer_screen.dart';
import 'package:auth_project/constants.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
      ),
      home: Scaffold(
        body: Stack(
          children: [
            WelcomeScreen(),
          ],
        ),
      ),
    );
  }
}
