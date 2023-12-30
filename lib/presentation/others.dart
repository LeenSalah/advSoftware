import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'common/categories_container.dart';

class Others extends StatelessWidget {
  static String route = 'Others';
  const Others({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: SizedBox(
            width: 100.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: BackButton(),
                ),
                Text('Choose other options', style: TextStyle(
                    fontSize:
                    Theme.of(context).textTheme.bodyLarge?.fontSize), textAlign: TextAlign.center,),
                SizedBox(height: 3.h,),
                CategoriesContainer(label: const Text('Restaurants offers'), icon: Icons.fastfood, onTap: (){},),
                SizedBox(
                  height: 5.h,
                ),
                CategoriesContainer(label: const Text('Prayer rooms'), icon: Icons.mosque, onTap: (){},),
                SizedBox(
                  height: 5.h,
                ),
                CategoriesContainer(label: const Text('Announcements'), icon: CupertinoIcons.mic_solid, onTap: (){},),
                SizedBox(height: 5.h,),
                CategoriesContainer(label: const Text('Uni map'), icon: CupertinoIcons.location_solid ,onTap: (){},),
                SizedBox(height: 5.h,),
                CategoriesContainer(label: const Text('Libraries'), icon: CupertinoIcons.book_fill,onTap: (){},),
                SizedBox(height: 5.h,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
