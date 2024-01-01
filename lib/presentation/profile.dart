import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:uni_verse/presentation/common/line_divider.dart';
import 'package:uni_verse/presentation/sign_in.dart';

import '../generated/l10n.dart';
import '../l10n/app_locale.dart';

class Profile extends StatefulWidget {
  static String route = 'profile';
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool temp = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 3.h,),
            Center(
              child: SizedBox(
                width: 80.w,
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  elevation: 18,
                  color: Colors.grey[300],
                  child: const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Align(child: Icon(Icons.edit), alignment: Alignment.topRight,),
                        Text('Name', style: TextStyle(fontSize: 25),),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Email', style: TextStyle(fontSize: 25),)
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 3.h,),
            LineDivider(width: 95.w,),
            SizedBox(height: 2.h,),
            Padding(
              padding: const EdgeInsets.only(right: 12.0, left: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Change language', style: TextStyle(fontSize: 17.sp)),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).primaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50))),
                    child: Text(S.of(context).changeLanguage),
                    onPressed: () {
                      setState(() {
                        AppLocale().updateLocale();
                      });
                    },
                  )
                ],
              ),
            ),
            SizedBox(height: 2.h,),
            Padding(
              padding: const EdgeInsets.only(right: 12.0, left: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Change app theme', style: TextStyle(fontSize: 17.sp),),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          temp = !temp;
                        });
                      },
                      icon: temp == false
                          ? const Icon(
                        CupertinoIcons.moon,
                        size: 29,
                      )
                          : const Icon(
                        Icons.sunny,
                        size: 29,
                      )),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Log out', style: TextStyle(color: Colors.pink),),
              onTap: (){Navigator.pushNamed(context, SignIn.route);},
            ),
          ],
        ),
      ),
    );
  }
}
