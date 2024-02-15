
import 'package:flutter/material.dart';
import 'package:more_screens/eighth_screen.dart';
import 'package:more_screens/eleventth_screen.dart';
import 'package:more_screens/fifth_screen.dart';
import 'package:more_screens/fourth_screen.dart';
import 'package:more_screens/ninth_screen.dart';
import 'package:more_screens/second_screen.dart';
import 'package:more_screens/seventh_screen.dart';
import 'package:more_screens/sixth_screen.dart';
import 'package:more_screens/tenth_screen.dart';
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
  String? appButtonText6;
  String? appButtonText7;
  String? appButtonText8;
  String? appButtonText9;
  String? appButtonText10;


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

    Future<void> navigateToSeventhScreen() async {
    final res = await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return const SeventhScreen();
        },
      ),
    );
    setState(() {
      appButtonText6 = res;
    });
  }

  Future<void> navigateToEighthScreen() async {
    final res = await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return const EighthScreen();
        },
      ),
    );
    setState(() {
      appButtonText7 = res;
    });
  }

  Future<void> navigateToNinthScreen() async {
    final res = await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return const NinthScreen();
        },
      ),
    );
    setState(() {
      appButtonText8 = res;
    });
  }

  Future<void> navigateToTenthScreen() async {
    final res = await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return const TenthScreen();
        },
      ),
    );
    setState(() {
      appButtonText9 = res;
    });
  }

  Future<void> navigateToEleventhScreen() async {
    final res = await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return const EleventhScreen();
        },
      ),
    );
    setState(() {
      appButtonText10 = res;
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
              itemCount: 27,
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
                  case 5:
                    buttonText = appButtonText6 ?? 'На седьмой экран';
                    onPressed = navigateToSeventhScreen;
                  case 6:
                    buttonText = appButtonText7 ?? 'На восьмой экран';
                    onPressed = navigateToEighthScreen;
                  case 7:
                    buttonText = appButtonText8 ?? 'На девятый экран';
                    onPressed = navigateToNinthScreen;
                  case 8:
                    buttonText = appButtonText9 ?? 'На десятый экран';
                    onPressed = navigateToTenthScreen;
                  case 9:
                    buttonText = appButtonText10 ?? 'На одиннадцатый экран';
                    onPressed = navigateToEleventhScreen;
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

          NavigationBar(
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home), 
            label: 'Home',
            ),
          NavigationDestination(
            icon: Icon(Icons.explore), 
            label: 'Explore',
            ),
          NavigationDestination(
            icon: Icon(Icons.person), 
            label: 'Profile',
            ),
          NavigationDestination(
            icon: Icon(Icons.settings_rounded), 
            label: 'Settings',
            ),
        ],
      ),
        ],

        

      ),

      

    );
  }
}
