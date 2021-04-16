import 'package:auth_project/Screens/Login/login_screen.dart';
import 'package:auth_project/Screens/home_screen.dart';
import 'package:auth_project/Screens/Signup/components/background.dart';
import 'package:auth_project/Screens/Signup/components/social_icon.dart';
import 'package:auth_project/components/already_have_an_account_acheck.dart';
import 'package:auth_project/components/rounded_button.dart';
import 'package:auth_project/components/rounded_input_field.dart';
import 'package:auth_project/components/rounded_password_field.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';

import 'or_divider.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SIGNUP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.35,
            ),
            RoundedInputField(
              hintText: "Nom",
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: "Prénom",
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: "Num téléphone",
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: "Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "SIGNUP",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return HomeScreen();
                    },
                  ),
                );
              },
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocalIcon(
                  iconSrc: "assets/icons/facebook.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/twitter.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
