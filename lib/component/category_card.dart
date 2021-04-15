import 'package:Field_Force/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryCard extends StatelessWidget {
  final String title;
  final Color clr;

  const CategoryCard({
    Key key,
    this.title,
    this.clr,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kwhite,
        borderRadius: BorderRadius.circular(categorycardBorderRadius),
        boxShadow: [
          BoxShadow(
            color: kgreyColor.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          Padding(padding: EdgeInsets.all(categorycardPadding)),
          Image.asset(
            "assets/icons/book.PNG",
            alignment: Alignment.center,
            width: categorycardwidthHeight,
            height: categorycardwidthHeight,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .title
                .copyWith(fontSize: categorycardfontSize, color: clr),
          ),
          // RawMaterialButton(
            
          //   elevation: 5.0,
          //   shape: CircleBorder(),
          //   fillColor: Colors.grey[850],
          //   onPressed: () {},
          //   child: Center(
              
          //     child: Icon(
          //       Icons.arrow_forward,
          //       color: kwhite,
          //       size: 20.0,
          //     ),
          //   ),
          //   constraints: BoxConstraints.tightFor(
          //     width: 30.0,
          //     height: 30.0,
          //   ),
          // )
        ],
      ),
    );
  }
}
