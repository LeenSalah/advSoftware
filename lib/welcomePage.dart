import 'package:flutter/material.dart';
import 'package:uni_verse/presentation/create_account.dart';
import 'package:uni_verse/presentation/helpers/publishAnnouncements.dart';
import 'package:uni_verse/presentation/helpers/publishArticles.dart';
import 'package:uni_verse/presentation/helpers/publishOffers.dart';
import 'package:uni_verse/presentation/sign_in.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(

          elevation: 20,
          backgroundColor: Color(0xFF371942),
          title:  Center(child: Image.asset("assets/414731814_1023146918790884_6995214750630900101_n.png",
          width: 200,
          height: 70,),
          ),
        ),
      ),
      body:
      ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          Image.asset("assets/time-is-money.jpg",height: 200,),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CreateAccount()),
                );
              },
              style: ElevatedButton.styleFrom(
                elevation: 20,
                fixedSize: const Size(250, 80),
                backgroundColor: Color(0xFF816E94),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: const Text(
                'SignUp as Student',
                style: TextStyle(fontSize: 25, ),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ElevatedButton(
              onPressed: () {Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Publish_Articles()),
              );},
              style: ElevatedButton.styleFrom(
                elevation: 20,
                fixedSize: const Size(300, 80),
                backgroundColor: Color(0xFF816E94),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: const Text(
                'SignUp as Psychologist',
                style: TextStyle(fontSize: 25,),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ElevatedButton(

              onPressed: () {Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Publish_Announcements()),
              );},
              style: ElevatedButton.styleFrom(
                elevation: 20,
                fixedSize: const Size(270, 80),
                backgroundColor:  Color(0xFF816E94),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: const Text(
                'SignUp as Educator',
                style: TextStyle(fontSize: 25,),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                elevation: 20,
                fixedSize: const Size(300, 80),
                backgroundColor:  Color(0xFF816E94),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: const Text(
                'SignUp as Guide',
                style: TextStyle(fontSize: 25,),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ElevatedButton(
              onPressed: () {Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Publish_Offers()),
              );},
              style: ElevatedButton.styleFrom(
                elevation: 20,
                fixedSize: const Size(300, 80),
                backgroundColor:  Color(0xFF816E94),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: const Text(
                'SignUp as Restaurant Owner',
                style: TextStyle(fontSize: 25,),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          )
        ],
      ),


    );
  }
}
