import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'dummy_announcements.dart';

class Announcement extends StatelessWidget {
  static String route = 'announcement';

  const Announcement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Choose subject'),
          backgroundColor: const Color(0xFF371942),
        ),
        body: SizedBox(
          width: 100.w,
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            SizedBox(height: 3.h,),
            ElevatedButton(
              onPressed: () {Navigator.pushNamed(context, DummyAnnouncement.route);},
              child: Text('C++'),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(80.w, 7.h),
                backgroundColor: Color(0xFF371942),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
            ),
            SizedBox(height: 3.h,),
            ElevatedButton(
              onPressed: () {Navigator.pushNamed(context, DummyAnnouncement.route);},
              child: Text('Advanced software'),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(80.w, 7.h),
                backgroundColor: Color(0xFF371942),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
            ),
            SizedBox(height: 3.h,),
            ElevatedButton(
              onPressed: () {Navigator.pushNamed(context, DummyAnnouncement.route);},
              child: Text('AI'),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(80.w, 7.h),
                backgroundColor: Color(0xFF371942),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              ),
            SizedBox(height: 3.h,),
            ElevatedButton(
              onPressed: () {Navigator.pushNamed(context, DummyAnnouncement.route);},
              child: Text('Data structures'),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(80.w, 7.h),
                backgroundColor: Color(0xFF371942),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
            ),
            SizedBox(height: 3.h,),
            ElevatedButton(
              onPressed: () {Navigator.pushNamed(context, DummyAnnouncement.route);},
              child: Text('Discrete math'),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(80.w, 7.h),
                backgroundColor: Color(0xFF371942),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
            ),
          ]),
        ));
  }
}
