// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static final LatLng schoolLatlng = LatLng(
    //위도와 경도 값 지정
    37.540853,
    127.078971,
  );

  static final CameraPosition initialPosition = CameraPosition(
    //지도를 바라보는 카메라 위치
    target: schoolLatlng, //카메라 위치(위도, 경도)
    zoom: 10, //확대 정도
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: renderAppBar(),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: GoogleMap(
              //구글 맵 사용
              mapType: MapType.normal, //지도 유형 설정
              initialCameraPosition: initialPosition, //지도 초기 위치 설정
            ),
          ),
          Expanded(
            flex: 1,
            child: Text('출퇴근'),
          ),
        ],
      ),
    );
  }

  AppBar renderAppBar() {
    return AppBar(
      title: Text(
        '구글지도로 보는 학교',
        style: TextStyle(color: Colors.green[900], fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
    );
  }
}
