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
    );
  }
}