import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:moodi/pages/check_in.dart';
import 'package:moodi/pages/home.dart';
import 'package:page_transition/page_transition.dart';

import 'notification_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await NotificationService().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return NeumorphicApp(
      title: 'Moodi',
      theme: const NeumorphicThemeData(),
      initialRoute: '/',
      routes: {
        '/': (context) => AnimatedSplashScreen(
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
        '/checkin': (context) => const CheckIn(),
      },
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
      body: const SafeArea(child: Home()),
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
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
          selectedItemColor: Colors.teal[300],
          onTap: _onItemTapped,
        ),
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
