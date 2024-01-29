import 'package:flutter/material.dart';

class FourthScreen extends StatelessWidget {
  const FourthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Fourth screen'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
          Navigator.of(context).pop('C четвёртого экрана');
        }
        ),
      ),
      body: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child:Container(
                // width: 136,
                 height: 50,
                color: const Color.fromARGB(255, 223, 221, 221),
              ),
               ),
              Expanded(
                flex: 1,
                child: Container(
                // width: 136,
                 height: 50,
                color: Colors.blue,
              ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                // width: 136,
                 height: 50,
                color: Colors.red,
              ),
              ),
              
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 136,
                height: 50,
                color: const Color.fromARGB(255, 223, 221, 221),
              ),
              Container(
                width: 136,
                height: 50,
                color: Colors.blue,
              ),
              Container(
                width: 136,
                height: 50,
                color: Colors.red,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 136,
                height: 50,
                color: const Color.fromARGB(255, 223, 221, 221),
              ),
              Container(
                width: 136,
                height: 50,
                color: Colors.blue,
              ),
              Container(
                width: 136,
                height: 50,
                color: Colors.red,
              ),
            ],
          ),
        ],
      ),
    );
  }
}