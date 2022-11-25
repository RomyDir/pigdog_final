import 'package:flutter/material.dart';

class XDHeaderBox extends StatelessWidget {
  XDHeaderBox({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        // Adobe XD layer: 'Shadow' (shape)
        Container(
          decoration: BoxDecoration(
            color: const Color(0xfff9fafb),
            boxShadow: [
              BoxShadow(
                color: const Color(0x8097a7c3),
                offset: Offset(0, 3),
                blurRadius: 5,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
