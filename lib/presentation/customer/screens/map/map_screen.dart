import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:winter_foodies/config/my_colors.dart';
import 'package:winter_foodies/constants/build_context_extensions.dart';

//참고 https://parkjh7764.tistory.com/205
//마커 생성 https://funncy.github.io/flutter/2020/07/21/flutter-google-map-marker/
class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  CameraPosition? _userPosition;
  Set<Marker> _storeMarkers = {};

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      CameraPosition userPosition = await _getUserLocation();
      Set<Marker> storeMarkers = await _getStoreMarkers(userPosition);

      setState(() {
        _userPosition = userPosition;
        _storeMarkers = storeMarkers;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: MyColors.primary,
        appBar: AppBar(
          title: Text(
            '지도로 찾기',
            style: context.displayMedium(),
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.arrow_back_ios)),
          backgroundColor: MyColors.primary,
        ),
        body: Container(
          child: Column(
            children: [
              Text(
                '나와 가까운 매장을 불러옵니다',
                style: context.headlineSmall(),
              ),
              Expanded(
                  child: _userPosition == null
                      ? const Center(
                          child: CircularProgressIndicator(),
                        )
                      : GoogleMap(
                          initialCameraPosition: _userPosition!,
                          mapType: MapType.normal,
                          myLocationEnabled: true,
                          myLocationButtonEnabled: true,
                          zoomGesturesEnabled: true,
                          zoomControlsEnabled: true,
                          markers: _storeMarkers,
                        ))
            ],
          ),
        ));
  }

  //현재 사용자 위치 조회
  Future<CameraPosition> _getUserLocation() async {
    await Geolocator.requestPermission();
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);

    return CameraPosition(
      target: LatLng(position.latitude, position.longitude), //카메라 위치(위도, 경도)
      zoom: 15, //확대 정도
    );
  }

  //가게 위치 조회 + 마킹
  Future<Set<Marker>> _getStoreMarkers(CameraPosition position) async {
    List<LatLng> storeLocationList = [];
    Set<Marker> markers = {};

    for (int i = 0; i < 5; i++) {
      storeLocationList.add(LatLng(
          position.target.latitude + i * 0.001, position.target.longitude));
    }

    for (int i = 0; i < storeLocationList.length; i++) {
      markers.add(Marker(
          markerId: MarkerId("$i"),
          draggable: true,
          onTap: () {},
          position: storeLocationList[i]));
    }
    return markers;
  }
}
