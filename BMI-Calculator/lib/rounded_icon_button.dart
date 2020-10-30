import 'package:flutter/material.dart';
import 'constants.dart';

class RoundedIconButton extends StatelessWidget {
  final IconData icon;
  RoundedIconButton({@required this.icon, @required this.onPressed});
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      onPressed: onPressed,
    );
  }
}
