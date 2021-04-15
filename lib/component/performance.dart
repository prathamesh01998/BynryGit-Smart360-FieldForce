import 'package:Field_Force/constants.dart';
import 'package:flutter/material.dart';

class Performance extends StatelessWidget {
  final String performance;
  final int val;

  const Performance({Key key, this.performance, this.val}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Expanded(
                        child: IntrinsicHeight(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(performance,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline5
                                      .copyWith(
                                          color: kwhite, fontSize: performancefontsize1)),
                              Text(
                                val.toString() + "%" ,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5
                                    .copyWith(
                                        color: kwhite,
                                        fontSize: performancefontsize2,
                                        fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      );
  }
}