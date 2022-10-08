import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class RecentActivity extends StatefulWidget {
  const RecentActivity({Key? key}) : super(key: key);

  @override
  State<RecentActivity> createState() => _RecentActivityState();
}

class _RecentActivityState extends State<RecentActivity> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: 15, left: 20, top: 30),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Recent Activity",
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(top: 15, bottom: 15, right: 30, left: 30),
          child: Neumorphic(
            style: NeumorphicStyle(color: Colors.grey[100], depth: 7),
            child: const ListTile(
              trailing: Icon(
                Icons.tag_faces,
                color: Colors.indigoAccent,
              ),
              subtitle: Text('September 1, 2022'),
              title: Text('Monday'),
            ),
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(top: 15, bottom: 15, right: 30, left: 30),
          child: Neumorphic(
            style: NeumorphicStyle(color: Colors.grey[100], depth: 7),
            child: const ListTile(
              trailing: Icon(
                Icons.tag_faces,
                color: Colors.indigoAccent,
              ),
              subtitle: Text('September 2, 2022'),
              title: Text('Tuesday'),
            ),
          ),
        )
      ],
    );
  }
}
