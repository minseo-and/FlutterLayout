import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:permission_handler/permission_handler.dart';

class NaverMapComponent extends StatefulWidget {
  const NaverMapComponent({super.key});

  @override
  State<NaverMapComponent> createState() => _NaverMapComponentState();
}

class _NaverMapComponentState extends State<NaverMapComponent> {

  @override
  void initState() {
    _permission();
    super.initState();
  }

  void _permission() async {
    var requestStatus = await Permission.location.request();
    var status = await Permission.location.status;
    if (requestStatus.isPermanentlyDenied || status.isPermanentlyDenied) {
      openAppSettings();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,  // 전체 가로를 사용
      height: 400,             // 높이를 400으로 설정 (필요에 따라 조정)
      child: NaverMap(
        options: const NaverMapViewOptions(
          indoorEnable: true,             // 실내 맵 사용 가능 여부 설정
          locationButtonEnable: true,    // 위치 버튼 표시 여부 설정
          consumeSymbolTapEvents: false,  // 심볼 탭 이벤트 소비 여부 설정
        ),
        onMapReady: (controller) {
          print("네이버 맵 로딩됨!");
          final marker = NMarker(
          id: 'test',
          position:
          const NLatLng(37.506932467450326, 127.05578661133796));
          final marker1 = NMarker(
          id: 'test1',
          position:
          const NLatLng(37.606932467450326, 127.05578661133796));
          controller.addOverlayAll({marker, marker1});

        },
      ),
    );
  }
}
