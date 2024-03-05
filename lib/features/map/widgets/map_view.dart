import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapleMap extends StatefulWidget {
  const MapleMap({super.key});

  @override
  State<MapleMap> createState() => MapleMapState();
}

class MapleMapState extends State<MapleMap> {
  late GoogleMapController _controller;
  final Set<Marker> _markers = {};

  static const _initialPosition = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  void _onMapCreated(GoogleMapController controller) {
    _controller = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: _initialPosition,
        markers: _markers,
        onMapCreated: _onMapCreated,
      ),
    );
  }
}
