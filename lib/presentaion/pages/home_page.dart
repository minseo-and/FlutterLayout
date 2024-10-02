import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:frame/presentaion/templates/default_layout.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'review_page.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: 'Home',
      backButton: true,
      child: Text('Hello World!!!'),
    );
  }
}
