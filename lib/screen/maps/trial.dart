// import 'dart:async';

// import 'package:flutter/material.dart';

// import 'package:google_maps_flutter/google_maps_flutter.dart';

// String marklatlogn = "";

// class MapFunction extends StatefulWidget {
//   const MapFunction({Key? key}) : super(key: key);

//   @override
//   State<MapFunction> createState() => _MapFunctionState();
// }

// class _MapFunctionState extends State<MapFunction> {
//   // GoogleMapController? mapController;
//   Completer<GoogleMapController> _controller = Completer();
//   List<Marker> marker = [];
//   int id = 1;

//   Set<Polyline> _polyline = Set<Polyline>();
//   List<LatLng> polylineCoordinates = [];

//   @override
//   void initState() {
//     super.initState();
//   }

//   // void _onMapCreated(GoogleMapController controller) {
//   //   mapController = controller;
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Column(
//       children: [
//         Container(
//           width: MediaQuery.of(context).size.width,
//           height: MediaQuery.of(context).size.height,
//           child: GoogleMap(
//             mapType: MapType.normal,
//             onTap: (LatLng latlng) {
//               print(
//                   "${latlng.runtimeType}===*************==============================");
//               // markers:
//               // {
//               //   Marker(
//               //       markerId: MarkerId('anyUniqueId'),
//               //       position: LatLng(latlng.latitude, latlng.longitude),
//               //       infoWindow: InfoWindow(title: 'RanchiGymKhanaClub'));
//               // }
//               // ;
//               print("${latlng.latitude}========================");
//               print("${latlng.longitude}=****====================");

//               print(
//                   "whole is done -------------------------------------------------------${latlng}");
//             },
//             myLocationEnabled: true,
//             myLocationButtonEnabled: true,
//             initialCameraPosition: CameraPosition(
//               target: LatLng(23.39194846738751, 85.37849729352696),
//               zoom: 15.0,
//             ),
//             key: ValueKey('uniqueey'),
//             onMapCreated: (GoogleMapController controller) {
//               _controller.complete(controller);
//             },
//             markers: {
//               Marker(
//                   markerId: MarkerId('$id'),
//                   infoWindow: InfoWindow(title: "your current Location"),
//                   icon: BitmapDescriptor.defaultMarkerWithHue(
//                       BitmapDescriptor.hueRed))
//             },
//             // markers: marker.map((e) => e).toSet(),
//             polylines: _polyline,
//           ),
//         ),
//       ],
//     ));
//   }
// }
