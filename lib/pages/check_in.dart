import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'mood_display.dart';

class CheckIn extends StatefulWidget {
  const CheckIn({Key? key}) : super(key: key);

  @override
  State<CheckIn> createState() => _CheckInState();
}

class _CheckInState extends State<CheckIn> {
  double _sliderValue = 50.0;

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
              depth: 3,
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
            MoodDisplay(
              value: _sliderValue,
            ),
            NeumorphicSlider(
              height: 17,
              min: 0,
              max: 100,
              value: _sliderValue,
              onChanged: (value) {
                setState(() => _sliderValue = value);
              },
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 15, left: 20, top: 30),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Do you want to add something?")),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Neumorphic(
                  child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  maxLines: 8, //or null
                  decoration: InputDecoration.collapsed(
                      hintText: "Enter your text here"),
                ),
              )),
            )
          ],
        ),
      ),
    );
  }
}
