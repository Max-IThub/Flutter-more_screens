import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Third screen'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
          Navigator.of(context).pop('C третьего экрана');
        }
        ),
      ),
      body:  SizedBox(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                width: 150,
                height: 50,
                color: const Color.fromARGB(255, 223, 221, 221),
              ),
              Container(
                width: 150,
                height: 50,
                color: Colors.blue,
              ),
              Container(
                width: 150,
                height: 50,
                color: Colors.red,
              ),
              ],
            )
          ],
        ),
      ),
      
    );
  }
}