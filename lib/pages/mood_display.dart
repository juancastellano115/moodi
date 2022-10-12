import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class MoodDisplay extends StatefulWidget {
  const MoodDisplay({Key? key, required this.value}) : super(key: key);
  final double value;
  @override
  State<MoodDisplay> createState() => _MoodDisplayState();
}

const _textStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 20);

Widget processInput(double input) {
  if (input >= 0 && input < 20) {
    return const Text(style: _textStyle, "Bad");
  } else if (input >= 20 && input < 40) {
    return const Text(style: _textStyle, "Down");
  } else if (input >= 40 && input < 55) {
    return const Text(style: _textStyle, "Normal");
  } else if (input >= 55 && input < 65) {
    return const Text(style: _textStyle, "Good");
  } else if (input >= 65 && input <= 75) {
    return const Text(style: _textStyle, "Happy");
  } else if (input >= 75 && input <= 100) {
    return const Text(style: _textStyle, "Awesome");
  } else {
    return const Text(style: _textStyle, "Normal");
  }
}

class _MoodDisplayState extends State<MoodDisplay> {
  @override
  Widget build(BuildContext context) {
    return processInput(widget.value);
  }
}
