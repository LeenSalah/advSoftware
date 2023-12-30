import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:uni_verse/presentation/common/categories_container.dart';
import 'package:uni_verse/presentation/others.dart';
import 'package:uni_verse/presentation/time_management.dart';

import 'helpers/Budgeting.dart';

class HomePage extends StatelessWidget {
  static String route = "HomePage";

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: 100.w,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Choose what you wanna manage',
              style: TextStyle(
                  color: Color(0xFF41374A),
                  fontSize: Theme.of(context).textTheme.bodyLarge?.fontSize),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 3.h,
            ),
            CategoriesContainer(
              label: const Text('Time management',
                  style: TextStyle(color: Color(0xFF41374A), fontSize: 25)),
              icon: CupertinoIcons.time_solid,
              onTap: () {
                Navigator.pushNamed(context, TimeManagement.route);
              },
            ),
            SizedBox(
              height: 5.h,
            ),
            CategoriesContainer(
              label: const Text('Budgeting',
                  style: TextStyle(color: Color(0xFF41374A), fontSize: 25)),
              icon: CupertinoIcons.money_dollar,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Budget()),
                );
              },
            ),
            SizedBox(
              height: 5.h,
            ),
            CategoriesContainer(
              label: const Text('Mental health',
                  style: TextStyle(color: Color(0xFF41374A), fontSize: 25)),
              icon: CupertinoIcons.person,
              onTap: () {},
            ),
            SizedBox(
              height: 5.h,
            ),
            CategoriesContainer(
              label: const Text('others',
                  style: TextStyle(color: Color(0xFF41374A), fontSize: 25)),
              icon: CupertinoIcons.add,
              onTap: () {
                Navigator.pushNamed(context, Others.route);
              },
            )
          ],
        ),
      ),
    );
  }
}
