import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class MainHeader extends StatefulWidget {
  const MainHeader({Key? key}) : super(key: key);

  @override
  State<MainHeader> createState() => _MainHeaderState();
}

class _MainHeaderState extends State<MainHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.all(10),
      height: 200,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          gradient: LinearGradient(
            begin: Alignment(0.0, 1.7),
            end: Alignment(0.5, 0.0),
            colors: [
              Color.fromARGB(255, 129, 206, 122),
              Color.fromARGB(200, 86, 183, 228),
            ],
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Center(
            child: Text(
              'Good afternoon',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white70),
            ),
          ),
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/checkin');
              },
              style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(
                    const EdgeInsets.all(10)),
                backgroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromARGB(66, 250, 250, 250)),
              ),
              child: const Text(
                "Check in!",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              )),
        ],
      ),
    );
  }
}
