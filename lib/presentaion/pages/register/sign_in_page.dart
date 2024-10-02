import 'package:flutter/material.dart';
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
