import 'package:flutter/material.dart';

import '../constants.dart';

class Stats extends StatelessWidget {
  final int val;
  final String type;
  final Color clr;

  const Stats({Key key, this.val, this.type, this.clr}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
            child: Text(
              val.toString(),
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  .copyWith(color: kwhite, fontSize: appointmentKfontSize),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
            child: Text(
              type,
              style: Theme.of(context).textTheme.headline5.copyWith(
                  color: kwhite,
                  fontSize: appointmentKfontSize,
                  fontWeight: FontWeight.w800),
            ),
          )
        ],
      ),
    );
  }
}
