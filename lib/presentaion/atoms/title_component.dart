import 'package:flutter/material.dart';
import 'package:frame/presentaion/molecules/button/back_arrow_button.dart';

class TitleComponent extends StatelessWidget {
  final String title;
  final bool backButton;

  const TitleComponent({super.key, required this.title, required this.backButton});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        backButton
            ? const SizedBox(
                width: 40,
                height: 40,
                child: BackArrowButton(),
              )
            : const SizedBox(width: 40, height: 40),
        Text(
          title,
          style: const TextStyle(color: Colors.black, fontSize: 20),
        ),
        const SizedBox(
          width: 40,
          height: 40,
        )
      ],
    );
  }
}
