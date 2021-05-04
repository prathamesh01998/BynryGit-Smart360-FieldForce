import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:Field_Force/component/jobcards.dart';

class GoogleMapScreen extends StatefulWidget {
  @override
  _GoogleMapScreenState createState() => _GoogleMapScreenState();
}

class _GoogleMapScreenState extends State<GoogleMapScreen> {
  Set<Marker> _marker = {};
  final nearbyCarsLocation = [
    LatLng(24.9286825, 67.0403249),
    LatLng(28.985577, 50.0661056), //24.9294892,67.0391903,18.73z
    LatLng(20.5937, 78.9629)
  ];

  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      for (var i = 0; i < nearbyCarsLocation.length; i++) {
        var now = new DateTime.now().millisecondsSinceEpoch;
        _marker.add(Marker(
          markerId: MarkerId(nearbyCarsLocation[i].toString() + now.toString()),
          onTap: () {
            showModalBottomSheet(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0)),
              ),
              context: context,
              builder: (builder) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Center(
                        child: Container(
                          color: Colors.grey,
                          width: 59,
                          height: 4,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 30, 8, 8),
                      child: Container(
                          width: 427,
                          height: 182,
                          child: Jobcard(serviceType: "Installation")),
                    ),
                  ],
                );
              },
            );
          },
          position: nearbyCarsLocation[i],
          //  icon: icon
          // infoWindow: InfoWindow(title: address, snippet: "go here"),
        ));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      onMapCreated: _onMapCreated,
      markers: _marker,
      initialCameraPosition:
          CameraPosition(target: LatLng(20.5937, 78.9629), zoom: 15),
    );
  }
}
