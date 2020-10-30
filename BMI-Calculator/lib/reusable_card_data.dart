import 'package:flutter/material.dart';
import 'constants.dart';

class ReusableCardData extends StatelessWidget {
  final String customText;
  final IconData customIconData;
  ReusableCardData({this.customText, this.customIconData});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          customIconData,
          size: 80,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          customText,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
