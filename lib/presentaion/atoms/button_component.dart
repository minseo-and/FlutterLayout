import 'package:flutter/material.dart';

class ButtonComponent extends StatelessWidget {
  final Widget child;
  final GestureTapCallback onPress;
  const ButtonComponent({super.key, required this.child, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: child,
    );
  }
}
