import 'package:flutter/material.dart';

class PrayerRooms extends StatefulWidget {
  const PrayerRooms({super.key});

  @override
  State<PrayerRooms> createState() => _PrayerRoomsState();
}

class _PrayerRoomsState extends State<PrayerRooms> {
  final List<Places> _places = [];

  @override
  void initState() {
    _fillPlaces();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Prayer Rooms",
            style: TextStyle(fontSize: 25),
          ),
        ),
        backgroundColor: Color(0xFF371942),
      ),
      body: _getGridView(_places),
    );
  }

  Widget _getGridView(List<Places> places) {
    return GridView.builder(
      itemBuilder: (context, index) {
        return Card(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 22),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),),
          elevation: 8,
          color: Color(0xFFF2F1F4),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Center(
              child: Text(
                places[index].place,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF371942),
                ),
              ),
            ),
          ),
        );
      },
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 30.0,
      ),
      itemCount: places.length,
      shrinkWrap: false,
    );
  }

  void _fillPlaces() {
    _places.add(Places(place: "Library Prayer Room"));
    _places.add(Places(place: "Faculty of Agriculture"));
    _places.add(Places(place: "Faculty of Business "));
    _places.add(Places(place: " Faculty of Languages"));
    _places.add(Places(place: "Scientific Halls Complex"));
    _places.add(Places(place: "Faculty of Law"));
    _places.add(Places(place: "Faculty of Literature"));
    _places.add(Places(place: "Faculty of Physical Education"));
    _places.add(Places(place: "chemistry department"));
    _places.add(Places(place: "Faculty of IT"));
    _places.add(Places(place: "Medical complex"));
    _places.add(Places(place: "Faculty of medicine"));
    _places.add(Places(place: "Faculty of Rehabilitation Sciences"));
    _places.add(Places(place: "Faculty Of Nursing"));
    // Add more places as needed
  }
}

class Places {
  String place;

  Places({required this.place});
}
