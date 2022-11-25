import 'package:flutter/material.dart';

class XDButtonSmallPressed extends StatelessWidget {
  XDButtonSmallPressed({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Transform.rotate(
          angle: 3.1416,
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xfff9fafb),
              borderRadius: BorderRadius.circular(25.0),
            ),
          ),
        ),
      ],
    );
  }
}
