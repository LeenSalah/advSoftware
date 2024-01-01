import 'package:flutter/material.dart';

class LineDivider extends StatelessWidget {
  final double width;
  const LineDivider({Key? key, this.width = 100}) : super(key: key);

  @override
  Widget build(BuildContext context) => SizedBox(
        width: width,
        child: Divider(
          thickness: 1,
          color: Colors.black,
          endIndent: 20,
          indent: 20,
        ));
}
