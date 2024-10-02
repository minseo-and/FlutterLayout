import 'package:flutter/material.dart';
import 'package:frame/presentaion/atoms/button_component.dart';

class BackArrowButton extends StatelessWidget {
  const BackArrowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ButtonComponent(
      child: Center(child: Icon(Icons.arrow_back)),
      onPress: () {
        Navigator.pop(context);
      },
    );
  }
}
