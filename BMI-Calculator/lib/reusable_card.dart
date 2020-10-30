import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color cardBackColor;
  final Widget cardChild;
  final Function onPress;
  ReusableCard({@required this.cardBackColor, this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(15),
        child: cardChild,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: cardBackColor,
        ),
      ),
    );
  }
}
