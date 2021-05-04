import 'package:Field_Force/component/profile_image.dart';
import 'package:Field_Force/constants.dart';
import 'package:Field_Force/screens/workflowInstallationScreen/workflow_installation_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Overview extends StatefulWidget {
  @override
  _OverviewState createState() => _OverviewState();
}

class _OverviewState extends State<Overview> {
  Set<Marker> _marker = {};

  BitmapDescriptor icon;

  @override
  void initState() {
    getIcons();
    super.initState();
  }

// Cargar imagen del Marker
  getIcons() async {
    var icon = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(devicePixelRatio: 3.2), "assets/icons/Loc.png");
    setState(() {
      this.icon = icon;
    });
  }

// Cargar imagen del Marker

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
          position: nearbyCarsLocation[i],
          //  icon: icon
          // infoWindow: InfoWindow(title: address, snippet: "go here"),
        ));
      }
    });
  }

  @override
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //
    double width = MediaQuery.of(context).size.width;
    return ListView(children: [
      Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Overview",
              style: TextStyle(
                  color: kblack, fontSize: 15, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 12.0,
            ),
            Text(
              "Description",
              style: TextStyle(
                  color: kblack, fontSize: 15, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 12.0,
            ),
            Text(
              "James Roger is our new VIP Consumer they need a meter installation for Gas for Domestic Purpose. Punctuality and efficiency in work will be appreciated. He resides in Chicago near Downtown University student residence area. ",
              style: TextStyle(
                  color: kgreyColor, fontSize: 15, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 12.0,
            ),
            Divider(
              color: kgreyColor,
              thickness: 1,
              indent: 13,
              endIndent: 13,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Location",
              style: TextStyle(
                  color: kblack, fontSize: 15, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              width: width,
              height: 250,
              child: GoogleMap(
                onMapCreated: _onMapCreated,
                markers: _marker,
                initialCameraPosition:
                    CameraPosition(target: LatLng(20.5937, 78.9629), zoom: 15),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "05 Feb 2020",
                    style: TextStyle(color: kgreyColor),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "3.41 AM",
                    style:
                        TextStyle(color: kblack, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "923 Hendrickson Street, Warsaw, Oklahoma, 4822 USA",
                    style: TextStyle(color: kgreyColor),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  ButtonTheme(
                    minWidth: 150.0,
                    height: 45.0,
                    child: RaisedButton(
                        color: kwhite,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: kblack, width: 1),
                            borderRadius: BorderRadius.circular(20)),
                        child: Text(
                          'Get Direction',
                          style: TextStyle(color: kblack, fontSize: 16),
                        ),
                        onPressed: () {
                          //Navigator.pop(context);
                        }),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "ETA 10 min",
                    style: TextStyle(color: kgreyColor),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Divider(
                    color: kgreyColor,
                    thickness: 1,
                    indent: 13,
                    endIndent: 13,
                  ),
                ],
              ),
            ),
            Text(
              "Contact",
              style: TextStyle(color: kblack, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 18.0,
            ),
            Center(
              //padding: const EdgeInsets.all(8.0),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.,
                children: [
                  ProfileImage(),
                  SizedBox(
                    height: 12.0,
                  ),
                  Text(
                    "Harvey Dent",
                    style:
                        TextStyle(color: kblack, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "Lorem ipsum color",
                    style: TextStyle(
                        color: kgreyColor, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 22.0,
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: kgreyColor,
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                child: Icon(
                                  Icons.email,
                                  color: Colors.blueAccent,
                                )),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Email",
                                  style: TextStyle(
                                      color: kblack,
                                      fontWeight: FontWeight.w600)),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: kgreyColor,
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                child: Icon(
                                  Icons.call,
                                  color: Colors.blueAccent,
                                )),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Call",
                                style: TextStyle(
                                    color: kblack, fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: kgreyColor,
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                child: Icon(
                                  Icons.sms,
                                  color: Colors.blueAccent,
                                )),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Sms",
                                  style: TextStyle(
                                      color: kblack,
                                      fontWeight: FontWeight.w600)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: width,
              height: 50,
              decoration: new BoxDecoration(
                boxShadow: [
                  //color: Colors.white, //background color of box
                  BoxShadow(
                    color: kgreyColor,
                    blurRadius: 25.0, // soften the shadow
                    spreadRadius: 5.0, //extend the shadow
                    
                  )
                ],
              ),
              child: ButtonTheme(
                minWidth: 150.0,
                height: 45.0,
                child: RaisedButton(
                  color: Colors.deepOrangeAccent,
                  child: Text(
                    'Accept & Start Job',
                    style: TextStyle(color: kwhite, fontSize: 16),
                  ),
                  onPressed: () {

                      Navigator.push(context, MaterialPageRoute(
                                          builder: (context) =>
                                              WorkflowInstallation()));
                  }

                  //Send to API
                  ,
                ),
              ),
            )
          ],
        ),
      )
    ]);
  }
}
