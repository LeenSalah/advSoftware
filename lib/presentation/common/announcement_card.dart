import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:uni_verse/presentation/common/line_divider.dart';

class AnnouncementCard extends StatelessWidget {
  final String email;
  final String message;
  const AnnouncementCard({Key? key, required this.email, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(email),
              Text(message),
            ],
          ),
        ),
        LineDivider(width: 100.w,)
      ],
    );
  }
}
