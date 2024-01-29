import 'package:flutter/material.dart';

class FifthScreen extends StatelessWidget {
  const FifthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Fifth screen'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: (){
            Navigator.of(context).pop('С пятого экрана');
          }
        )
      ),
      body: Center(
        heightFactor: double.infinity,
        widthFactor: double.infinity,
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Container(
                width: double.infinity,
                height: 50,
                color: const Color.fromARGB(255, 223, 221, 221),
              ),
              Container(
                width: double.infinity,
                height: 50,
                color: Colors.blue,
              ),
              Container(
                width: double.infinity,
                height: 50,
                color: Colors.red,
              ),
          ],
        ),
        ),
        );
  }
}