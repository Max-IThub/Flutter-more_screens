
import 'package:flutter/material.dart';
import 'package:more_screens/fifth_screen.dart';
import 'package:more_screens/fourth_screen.dart';
import 'package:more_screens/second_screen.dart';
import 'package:more_screens/sixth_screen.dart';
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
  String? appButtonText5;

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

  Future<void> navigateToThirdScreen() async {
    final res = await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return const ThirdScreen();
        },
      ),
    );
    setState(() {
      appButtonText2 = res;
    });
  }

  Future<void> navigateToFourthScreen() async {
    final res = await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return const FourthScreen();
        },
      ),
    );
    setState(() {
      appButtonText3 = res;
    });
  }

  Future<void> navigateToFifthScreen() async {
    final res = await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return const FifthScreen();
        },
      ),
    );
    setState(() {
      appButtonText4 = res;
    });
  }

  Future<void> navigateToSixthScreen() async {
    final res = await Navigator.of(context).push(
      MaterialPageRoute(builder: (context){
        return const SixthScreen();
      },
      ),
    );
    setState(() {
      appButtonText5 = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Main Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 5,
              itemBuilder: (context, index) {
                String buttonText;
                Function onPressed;

                switch (index) {
                  case 0:
                    buttonText = appButtonText ?? 'На второй экран';
                    onPressed = navigateToSecondScreen;
                    break;
                  case 1:
                    buttonText = appButtonText2 ?? 'На третий экран';
                    onPressed = navigateToThirdScreen;
                    break;
                  case 2:
                    buttonText = appButtonText3 ?? 'На четвёртый экран';
                    onPressed = navigateToFourthScreen;
                    break;
                  case 3:
                    buttonText = appButtonText4 ?? 'На пятый экран';
                    onPressed = navigateToFifthScreen;
                    break;
                  case 4:
                    buttonText = appButtonText5 ?? 'На шестой экран';
                    onPressed = navigateToSixthScreen;
                  default:
                    buttonText = '';
                    onPressed = () {};
                }

                return ElevatedButton(
                  onPressed: onPressed as void Function()?,
                  child: Text(buttonText),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
