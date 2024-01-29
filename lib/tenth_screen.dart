import 'package:flutter/material.dart';

class TenthScreen extends StatelessWidget {
  const TenthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Tenth screen'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: (){
            Navigator.of(context).pop('с десятого экрана');
          },
        ),
      ),
    );
  }
}