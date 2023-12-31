import 'package:flutter/material.dart';

class RestaurantsOffers extends StatefulWidget {
  static String route = "libraries";
  const RestaurantsOffers({super.key});

  @override
  State<RestaurantsOffers> createState() => _RestaurantsOffersState();
}

class _RestaurantsOffersState extends State<RestaurantsOffers> {
  List<PlaceModel> _places = [];

  @override
  void initState() {
    _fillPlaces();
    super.initState();
  }


  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              "Restaurants Offers",
              style: TextStyle(fontSize: 25),
            ),
          ),
          backgroundColor:const Color(0xFF371942),
        ),
        body: ListView.builder(itemBuilder: (context, index){
          return _getPlaceCard(_places[index]);
        },
          itemCount: _places.length,
          shrinkWrap: true,
        )

    );
  }

  Widget _getPlaceCard(PlaceModel model) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 18,
      color: Colors.grey[300],
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Image.asset(model.image),
            const SizedBox(
              height: 10,
            ),
            Text(model.title, style: const TextStyle(fontSize: 25, color: Color(0xFF371942)),),
            const SizedBox(
              height: 10,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(model.location, style: const TextStyle(fontSize: 25,color: Color(0xFF371942)),),
            ),
            const SizedBox(
              height: 10,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(model.place, style: const TextStyle(fontSize: 25,color: Color(0xFF371942)),),
            )
          ],
        ),
      ),
    );
  }

  void _fillPlaces() {
    _places.add(PlaceModel(
        image: "assets/rest1.jpg",
        title: "Pizza Restaurant",
        location: "The North Gate",
        place: "The offer is valid until Jan 5th."));
    _places.add(PlaceModel(
        image: "assets/rest2.jpg",
        title: "pasta Restaurant",
        location: "University Street",
        place: "The offer is valid until Feb 4th."));
    _places.add(PlaceModel(
        image: "assets/rest3.jpg",
        title: "Healthy Food Restaurant",
        location: "Al-Rashid Suburb",
        place: "The offer is valid until Jan 9th."));

  }
}

class PlaceModel {
  String image;
  String title;
  String location;
  String place;


  PlaceModel({required this.image, required this.title, required this.location ,required this.place});
}
