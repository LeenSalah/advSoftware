import 'package:flutter/material.dart';

class UniMap extends StatefulWidget {
  const UniMap({super.key});

  @override
  State<UniMap> createState() => _UniMapState();
}

class _UniMapState extends State<UniMap> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "University Map",
            style: TextStyle(fontSize: 25),
          ),
        ),
        backgroundColor:const Color(0xFF371942),
      ),
      body: 
      Image.asset("assets/uniimapp.jpg", height: 900, ),
    );
  }
}
