import 'dart:io';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../constants.dart';

class Imagepicker extends StatefulWidget {
  @override
  _ImagepickerState createState() => _ImagepickerState();
}

class _ImagepickerState extends State<Imagepicker> {
  File _image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: getImage,
      child: Container(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Upload Photo",
            style: TextStyle(color: kblack),
          ),
          Container(
            margin: const EdgeInsets.all(15.0),
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                color: kwhite, border: Border.all(color: kgreyColor)),
            width: 550,
            height: 200,
            child: _image == null
                ? DottedBorder(
                    color: kgreyColor,
                    strokeWidth: 1,
                    child: Center(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.camera_alt_outlined,
                              color: kgreyColor,
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              "Upload Photo",
                              style: TextStyle(color: kblack),
                            ),
                          ]),
                    ),
                  )
                : Image.file(_image),
          )
        ],
      )),
    );

    // floatingActionButton: FloatingActionButton(
    //   onPressed: getImage,
    //   tooltip: 'Pick Image',
    //   child: Icon(Icons.add_a_photo),
    // ),
  }
}
