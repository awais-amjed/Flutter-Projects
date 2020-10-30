import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlatButton(
          onPressed: () {
            Navigator.push(
                context,
                PageRouteBuilder(
                    opaque: false,
                    pageBuilder: (BuildContext context, _, __) {
                      return Center(child: Text('My PageRoute'));
                    },
                    transitionsBuilder:
                        (___, Animation<double> animation, ____, Widget child) {
                      return FadeTransition(
                        opacity: animation,
                        child: RotationTransition(
                          turns: Tween<double>(begin: 0.5, end: 1.0)
                              .animate(animation),
                          child: child,
                        ),
                      );
                    }));
          },
          child: Text('Click me'),
          color: Colors.yellow,
        ),
      ),
      appBar: AppBar(),
    );
  }
}
