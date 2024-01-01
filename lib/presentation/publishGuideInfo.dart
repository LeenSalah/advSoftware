import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:uni_verse/presentation/common/rounded_text_form_field.dart';
import 'package:uni_verse/presentation/common/to_do_tile.dart';

class Publish_GuideInfo extends StatelessWidget {
  const Publish_GuideInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF371942),
        title:  const Row(
          children: [
            SizedBox(width: 50,),
            Text("Guide Screen", style: TextStyle(fontSize: 30),),
          ],
        ),
      ),
        body: ListView(
          children: [
            const SizedBox(
              height: 25,
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Card(
                color: Color(0xFFFFF5EE),
                child: Padding(
                  padding: EdgeInsets.all(50),
                  child: Text("Thank you for your help, please add your Number to let students contact with you."
                  , style: TextStyle(fontSize: 25, color: Color(0xFF371942)),),
                ),
              ),
            ),
           const SizedBox(height:30),
           Image.asset("assets/414731814_1023146918790884_6995214750630900101_n.png", color: const Color(0xFF5B3256),),
            const SizedBox(height:90),
            Center(
              child: FloatingActionButton(
                backgroundColor: const Color(0xFF371942),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return ConstrainedBox(
                          constraints: BoxConstraints(maxHeight: 10.h),
                          child: AlertDialog(
                            title: const Text('Add your Number'),
                            content: TextFormField(),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text('Add')),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text('Cancel'))
                            ],
                          ),
                        );
                      });
                },
                child: const Icon(Icons.add),
              ),
            ),
          ],
        ));
  }
}
