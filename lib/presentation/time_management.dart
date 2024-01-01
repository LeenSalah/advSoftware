import 'package:flutter/material.dart';
import 'package:uni_verse/presentation/time_management_tabs/calendar.dart';
import 'package:uni_verse/presentation/time_management_tabs/to_do.dart';

class TimeManagement extends StatelessWidget {
  static String route = 'TimeManagement';

  const TimeManagement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF371942),
          title: const Text('Manage your time', style: TextStyle(fontSize: 25),),
          bottom: const TabBar(tabs: [
            Tab(icon: Icon(Icons.calendar_month, color: Color(0xFF371942),)),
            Tab(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(Icons.check), Text('To-Do')],
            )),
          ]),
        ),
        body: const TabBarView(
          children: [Calendar(), ToDo()],
        ),
      ),
    );
  }
}
