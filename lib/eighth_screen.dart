import 'package:flutter/material.dart';

class EighthScreen extends StatelessWidget {
  const EighthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Eighth screen'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: (){
            Navigator.of(context).pop('С восмього экрана');
          },
        ),
      ),
       
                
        
         
    );
  }
}