import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:frame/presentaion/atoms/title_component.dart';

class DefaultLayout extends StatelessWidget {
  final Widget child;
  final bool backButton;
  final String title;
  const DefaultLayout({super.key, required this.child, required this.backButton, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TitleComponent(title: title, backButton: backButton,),
            child
          ],
        ),
      ),
    );
  }
}
