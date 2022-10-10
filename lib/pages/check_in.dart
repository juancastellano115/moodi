import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class CheckIn extends StatefulWidget {
  const CheckIn({Key? key}) : super(key: key);

  @override
  State<CheckIn> createState() => _CheckInState();
}

class _CheckInState extends State<CheckIn> {
  @override
  Widget build(BuildContext context) {
    return NeumorphicTheme(
      theme: const NeumorphicThemeData(
        lightSource: LightSource.topLeft,
        accentColor: NeumorphicColors.accent,
        appBarTheme: NeumorphicAppBarThemeData(
            buttonStyle: NeumorphicStyle(
              boxShape: NeumorphicBoxShape.circle(),
              shape: NeumorphicShape.concave,
              depth: 8,
              intensity: 1,
            ),
            textStyle: TextStyle(color: Colors.black, fontSize: 20),
            centerTitle: true),
        depth: 2,
        intensity: 0.5,
      ),
      child: Scaffold(
        appBar: NeumorphicAppBar(
          title: const Text("Mood check-in"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Align(
              alignment: Alignment.center,
              child: Text("How are you feeling today?"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () => {}, child: const Text("Awesome")),
                ElevatedButton(onPressed: () => {}, child: const Text("Fine")),
                ElevatedButton(onPressed: () => {}, child: const Text("Bored")),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () => {}, child: const Text("Normal")),
                ElevatedButton(onPressed: () => {}, child: const Text("Down")),
                ElevatedButton(onPressed: () => {}, child: const Text("Bad")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
