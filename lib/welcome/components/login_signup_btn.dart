import 'package:bigmartsalesprediction/constants.dart';
import 'package:bigmartsalesprediction/login/login_screen.dart';
import 'package:bigmartsalesprediction/signup/signup_screen.dart';
import 'package:flutter/material.dart';

class LoginAndSignup extends StatelessWidget {
  const LoginAndSignup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Hero(
            tag: "login_btn",
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context){return const LoginScreen();}));
                }, child: Text("Login".toUpperCase()))),
        const SizedBox(
          height: 16,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return const SignUpScreen();
            })
            );

          },
          style: ElevatedButton.styleFrom(
              backgroundColor: kPrimaryLightColor, elevation: 0),
          child: Text(
            "Sign Up".toUpperCase(),
            style: const TextStyle(color: Colors.black),
          ),
        )
      ],
    );
  }
}
