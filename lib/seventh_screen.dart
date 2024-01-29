import 'package:flutter/material.dart';

class SeventhScreen extends StatelessWidget {
  const SeventhScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Seventh screen'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: (){
            Navigator.of(context).pop('С седьмого экрана');
          },
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.blue,
              ),
              ),
              const Expanded(
                flex: 1,
                child: SizedBox(),
                ),
              Expanded(
                flex: 3,
                child: Container(
                  color: Colors.red,
                ),
              ),
              const Expanded(
                flex: 1,
                child: SizedBox(),
                ),
              Expanded(
              flex: 3,
              child: Container(
                color: Colors.purple,
              ),
              ),
              const Expanded(
                flex: 1,
                child: SizedBox(),
                ),
              Expanded(
                flex: 3,
                child: Container(
                  color: Colors.green,
                ),
              ),
                    ],
        ),
      ),
    );
  }
}