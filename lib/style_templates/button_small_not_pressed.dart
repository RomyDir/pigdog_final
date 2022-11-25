import 'package:flutter/material.dart';

class XDButtonSmallNotPressed extends StatelessWidget {
  XDButtonSmallNotPressed({
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
            borderRadius: BorderRadius.circular(31.0),
            boxShadow: [
              BoxShadow(
                color: const Color(0xff97a7c3),
                offset: Offset(3, 3),
                blurRadius: 5,
              ),
            ],
          ),
        ),
        // Adobe XD layer: 'Light' (shape)
        Container(
          decoration: BoxDecoration(
            color: const Color(0xfff9fafb),
            borderRadius: BorderRadius.circular(31.0),
            boxShadow: [
              BoxShadow(
                color: const Color(0xffffffff),
                offset: Offset(-5, -5),
                blurRadius: 10,
              ),
            ],
          ),
        ),
        // Adobe XD layer: 'Base' (shape)
        Container(
          decoration: BoxDecoration(
            color: const Color(0xfff9fafb),
            borderRadius: BorderRadius.circular(31.0),
          ),
        ),
      ],
    );
  }
}
