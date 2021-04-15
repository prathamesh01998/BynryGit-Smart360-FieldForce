import 'package:flutter/material.dart';


class ProfileImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:ClipOval(
                child: Image.asset(
                  'assets/images/image_1.png',
                  fit: BoxFit.fill,
                ),
              ),
    );
  }
}