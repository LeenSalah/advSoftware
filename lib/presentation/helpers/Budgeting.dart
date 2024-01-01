import 'package:flutter/material.dart';

import '../chart.dart';
class Budget extends StatefulWidget {
  @override
  _BudgetState createState() => _BudgetState();
}

class _BudgetState extends State<Budget> {
  TextEditingController _textController = TextEditingController();
  bool isChecked = false;
  bool isChecked2 = false;
  bool isChecked3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: const Center(
              child: Text(
                "Manage Your Budget",
                style: TextStyle(fontSize: 25),
              ),
            ),
            backgroundColor: const Color(0xFF371942),
          ),

      body: ListView(
        children: [
          const SizedBox(height: 20), // Add some spacing
          ClipRRect(
              borderRadius: BorderRadius.circular(30.0),
              child: Image.network(
                  'https://t3.ftcdn.net/jpg/02/20/61/32/240_F_220613224_ndm5grtS0xb65NZ0yJYSLevh54esqPdU.jpg')),
          const SizedBox(height: 20), // Add some spacing

          // Label
          const Center(
            child: Text(
              'Enter your expense value here:',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
          ),
          const SizedBox(height: 15), // Add some spacing

          // Text Field
          TextField(
            keyboardType: TextInputType.number,
            controller: _textController,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.money, color: Color(0xFF371942)),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(color: Color(0xFF371942), width: 3),
              ),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 25.0, horizontal: 16.0),
            ),
          ),


          const SizedBox(height: 50),
          const Center(
            child: Text(
              'How much do you spend on Food??',
              style: TextStyle(
                fontSize: 25,
                // fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 15), // Add some spacing

          // Text Field
          TextField(
            keyboardType: TextInputType.number,
            controller: _textController,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.money, color: Color(0xFF371942)),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(color: Color(0xFF371942), width: 3),
              ),
              fillColor: Colors.grey[100],
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 5.0),
            ),
          ),
          const SizedBox(height: 50),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Center(
              child: Text(
                'How much do you spend on transportation??',
                style: TextStyle(
                  fontSize: 25,
                  // fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
          const SizedBox(height: 15), // Add some spacing

          // Text Field
          TextField(
            keyboardType: TextInputType.number,
            controller: _textController,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.money, color:Color(0xFF371942)),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(color: Color(0xFFC371942), width: 3),
              ),
              fillColor: Colors.grey[100],
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 5.0),
            ),
          ),
          const SizedBox(height: 50),

          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Center(
              child: Text(
                'How much do you spend on Activities or on other things??',
                style: TextStyle(
                  fontSize: 25,
                  // fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
          const SizedBox(height: 15), // Add some spacing

          // Text Field
          TextField(
            keyboardType: TextInputType.number,
            controller: _textController,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.money, color: Color(0xFF371942)),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(color: Color(0xFF371942), width: 3),
              ),
              fillColor: Colors.grey[100],
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 5.0),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70),
            child: ElevatedButton(
              onPressed: () {Navigator.pushNamed(context, PieChartSample2.route);},
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(20, 50),
                backgroundColor: Color(0xFF371942),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ),
              child: const Text(
                'Submit',
                style: TextStyle(fontSize: 25,),
              ),
            ),
          ),
          const SizedBox(height: 50,),
          // Display the entered text
        ],
      ),
    );
  }
}
