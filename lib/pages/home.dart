import 'package:flutter/material.dart';

import '../main_header.dart';
import '../recent_activity.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Padding(
            padding: EdgeInsets.symmetric(vertical: 10), child: MainHeader()),
        RecentActivity()
      ],
    );
  }
}
