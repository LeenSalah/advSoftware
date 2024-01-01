import 'package:flutter/material.dart';
import 'package:uni_verse/models/announcements_model.dart';
import 'package:uni_verse/presentation/common/announcement_card.dart';

class DummyAnnouncement extends StatefulWidget {
  static String route = 'dummyAnnouncement';
  const DummyAnnouncement({super.key});

  @override
  State<DummyAnnouncement> createState() => _DummyAnnouncementState();
}

class _DummyAnnouncementState extends State<DummyAnnouncement> {
  List<AnnouncementModel> announce = [];
  @override
  void initState() {
    fillAnnouncement();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(35.0),
          child: Text(
            "Announcements",
            style: TextStyle(fontSize: 25),
          ),
        ),
        backgroundColor: const Color(0xFF371942),
      ),
      body: ListView.builder(itemBuilder: (context, index){
        return AnnouncementCard(email: announce[index].email, message: announce[index].message);
    },
    itemCount: announce.length,
    ),
    );
  }

  void fillAnnouncement() {
    announce.add(AnnouncementModel('Dr. Ahmad', 'quiz on queue,\nsunday at 2:30 pm'));
    announce.add(AnnouncementModel('Dr. Sara', 'Hello everyone,\nno class today for section 5'));
    announce.add(AnnouncementModel('Prof. Rama', 'The worksheet is up on elearning,\nmake sure to do it before the next lecture'));
    announce.add(AnnouncementModel('Prof. Samer', 'Make up exam is postponed,\nit will be held next week instead'));
    announce.add(AnnouncementModel('Dr. Jana', 'Midterm marks will be hand out tomorrow,\nattending the lecture is a must'));
    announce.add(AnnouncementModel('Dr. Waseem', 'No lectures for the next week,\nI\'m traveling for a conference'));
    announce.add(AnnouncementModel('Prof. Nabil', 'Homework is due in two days,\nI will give 5 marks on it for anyone who do it'));
    announce.add(AnnouncementModel('Dr. Rana', 'There is an important event in the auditorium'));
  }
}
