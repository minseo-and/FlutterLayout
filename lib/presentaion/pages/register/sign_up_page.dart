import 'package:flutter/material.dart';
import 'package:frame/presentaion/templates/default_layout.dart';

import '../../molecules/button/google_oauth_button.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultLayout(
        backButton: true,
        title: '회원가입',
        child: Expanded(
          child: Center(
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
        )
    );
  }
}
