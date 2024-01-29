import 'package:flutter/material.dart';

class SixthScreen extends StatelessWidget {
  const SixthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Sixth screen'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: (){
            Navigator.of(context).pop('С шестого экрана');
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 200,
              color: Colors.black,
            ),
            Container(
              width: double.infinity,
              height: 200,
              color: Colors.yellow,
            ),
            Container(
              width: double.infinity,
              height: 200,
              color: const Color.fromARGB(255, 223, 221, 221),
            ),
          ],
        ),
      ),
    );
  }
}