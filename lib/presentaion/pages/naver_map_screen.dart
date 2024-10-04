import 'package:flutter/material.dart';
import 'package:frame/presentaion/molecules/naver_map_component.dart';
import 'package:frame/presentaion/templates/default_layout.dart';

class NaverMapScreen extends StatelessWidget {
  const NaverMapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(child: NaverMapComponent(), backButton: false, title: '네이버 지도');
  }
}
