
import 'package:flutter/material.dart';
import 'package:more_screens/fifth_screen.dart';
import 'package:more_screens/fourth_screen.dart';
import 'package:more_screens/second_screen.dart';
import 'package:more_screens/third_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 
  String? appButtonText;

  String? appButtonText2;

  String? appButtonText3;

  String? appButtonText4;

 Future<void> navigateToSecondScreen() async {
    final res = await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return const SecondScreen();
        },
      ),
    );
setState(() {
  appButtonText = res;
});
  }
  
  Future<void> navigateToThirdScreen() async{
    final res = await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context){
          return const ThirdScreen();
        })
    );
    setState(() {
        appButtonText2 = res;

    });
  }

  Future<void> navigateToFourthScreen() async{
    final res = await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context){
          return const FourthScreen();
        })
    );
    setState(() {
      appButtonText3 = res;
    });
  }



  Future<void> navigateToFifthScreen() async{
    final res = await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context){
          return const FifthScreen();
        })
    );
    setState(() {
      appButtonText4 = res;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Main Page'),
        
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                navigateToSecondScreen();
              },
               child: Text(appButtonText ?? 'На второй экран')),
               ElevatedButton(onPressed: (){
                navigateToThirdScreen();
              },
               child: Text(appButtonText2 ?? 'На третий экран')),
               ElevatedButton(onPressed: (){
                navigateToFourthScreen();
              },
               child: Text(appButtonText3 ?? 'На четвёртый экран')),
              ElevatedButton(onPressed: (){
                navigateToFifthScreen();
              },
               child: Text(appButtonText4 ?? 'На пятый экран'))
            ],
          )
        ],
        
      ),
    );
  }
}
