import 'package:flutter/material.dart';
import 'package:frame/presentaion/atoms/images/doojji_cat.dart';
import 'package:frame/presentaion/molecules/button/google_oauth_button.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text("음지의 세상", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 30),),
            DoojjiCat(),
            Padding(
              padding: EdgeInsets.only(bottom: 100),
              child: GoogleOauthButton(),
            )
          ],
        ),
      ),
    );
  }
}
