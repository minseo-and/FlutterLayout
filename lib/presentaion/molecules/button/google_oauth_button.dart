import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:frame/presentaion/atoms/button_component.dart';
import 'package:frame/presentaion/atoms/images/google_icon.dart';
import 'package:frame/presentaion/pages/home_page.dart';
import 'package:google_sign_in/google_sign_in.dart';

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
    ), onPress: () async {
      signInWithGoogle(context);

    });
  }
  Future<void> signInWithGoogle(BuildContext context) async {
    GoogleSignIn _googleSignIn = GoogleSignIn();
    GoogleSignInAccount? _account = await _googleSignIn.signIn();
    final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
    User? user;
    if (_account != null) {
      GoogleSignInAuthentication _authentication =
      await _account.authentication;
      OAuthCredential _googleCredential = GoogleAuthProvider.credential(
        idToken: _authentication.idToken,
        accessToken: _authentication.accessToken,
      );
      UserCredential _credential =
      await _firebaseAuth.signInWithCredential(_googleCredential);

      if (_credential.user != null) {
        user = _credential.user;

        // 추가적인 사용자 정보 가져오기 (새 사용자 여부 확인)
        bool isNewUser = _credential.additionalUserInfo?.isNewUser ?? false;

        if (isNewUser) {
          // 새로 등록된 사용자 처리
          Fluttertoast.showToast(
            msg: "환영합니다, ${user!.displayName}님! 새로운 사용자로 등록되었습니다.",
            toastLength: Toast.LENGTH_LONG,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.blue,
            textColor: Colors.white,
            fontSize: 16.0,
          );
        } else {
          // 기존 사용자 처리
          Fluttertoast.showToast(
            msg: "환영합니다, ${user!.displayName}님! 다시 로그인하셨습니다.",
            toastLength: Toast.LENGTH_LONG,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.green,
            textColor: Colors.white,
            fontSize: 16.0,
          );

        }
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
        );
      }
    }
  }
}


