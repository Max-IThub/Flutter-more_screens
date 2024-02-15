import 'package:flutter/material.dart';

class EleventhScreen extends StatelessWidget {
  const EleventhScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Eleventh screen'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
          Navigator.of(context).pop('С одиннадцатого экрана');
        }
        ),
      ),
    );
  }
}