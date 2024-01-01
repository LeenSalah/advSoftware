import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:uni_verse/presentation/helpers/Restaurants_offers.dart';
import 'package:uni_verse/presentation/helpers/libraries.dart';
import 'common/categories_container.dart';
import 'helpers/prayerRooms.dart';

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
                const Align(
                  alignment: Alignment.topLeft,
                  child: BackButton(),
                ),
                Text(
                  'Choose other options',
                  style: TextStyle(
                    color: Color(0xFF41374A),
                      fontSize:
                          Theme.of(context).textTheme.bodyLarge?.fontSize),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 3.h,
                ),
                CategoriesContainer(
                  label: const Text('Restaurants offers',style: TextStyle(color: Color(0xFF41374A),fontSize: 25),),
                  icon: Icons.fastfood,
                  onTap: () { Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RestaurantsOffers()),
                  );},
                ),
                SizedBox(
                  height: 5.h,
                ),
                CategoriesContainer(
                  label: const Text('Prayer rooms',style: TextStyle(color: Color(0xFF41374A),fontSize: 25)),
                  icon: Icons.mosque,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PrayerRooms()),
                    );
                  },
                ),
                SizedBox(
                  height: 5.h,
                ),
                CategoriesContainer(
                  label: const Text('Announcements',style: TextStyle(color: Color(0xFF41374A),fontSize: 25)),
                  icon: CupertinoIcons.mic_solid,
                  onTap: () {},
                ),

                SizedBox(
                  height: 5.h,
                ),
                CategoriesContainer(
                  label: const Text('Libraries',style: TextStyle(color: Color(0xFF41374A),fontSize: 25)),
                  icon: CupertinoIcons.book_fill,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Libraries()),
                    );
                  },
                ),
                SizedBox(
                  height: 5.h,
                ),
                CategoriesContainer(
                  label: const Text('Uni map',style: TextStyle(color: Color(0xFF41374A),fontSize: 25)),
                  icon: CupertinoIcons.location_solid,
                  onTap: () {},
                ),
                SizedBox(
                  height: 5.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
