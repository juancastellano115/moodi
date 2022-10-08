import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:moodi/main_header.dart';
import 'package:moodi/recent_activity.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Moodi',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: AnimatedSplashScreen(
        duration: 3000,
        splash: const Text(
          "Moodi",
          style: TextStyle(color: Colors.black87, fontSize: 30),
        ),
        backgroundColor: Colors.white,
        nextScreen: const HomePage(),
        splashTransition: SplashTransition.fadeTransition,
        pageTransitionType: PageTransitionType.fade,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 251, 251, 251),
      body: SafeArea(
        child: Column(
          children: const [
            Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: MainHeader()),
            RecentActivity()
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 5,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.area_chart),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black54,
        onTap: _onItemTapped,
      ),
      floatingActionButton: NeumorphicFloatingActionButton(
        onPressed: () {
          // TODO: Implement
        },
        style: NeumorphicStyle(
          color: Colors.white30,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(50)),
        ),
        child: const Icon(Icons.home, size: 30),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
