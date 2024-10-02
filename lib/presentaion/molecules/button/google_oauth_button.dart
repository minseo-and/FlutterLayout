import 'package:flutter/material.dart';
import 'package:frame/presentaion/atoms/button_component.dart';
import 'package:frame/presentaion/atoms/images/google_icon.dart';

class GoogleOauthButton extends StatelessWidget {
  const GoogleOauthButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ButtonComponent(child: IntrinsicWidth(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            width: 1
          ),
          borderRadius: BorderRadius.circular(90.0)
        ),
        height: 40,
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GoogleIcon(),
              Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: Text('구글 계정으로 로그인', style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 15
                ),),
              )
            ],
          ),
        ),
      ),
    ), onPress: (){});
  }
}
