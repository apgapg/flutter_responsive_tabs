import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

class ThirdTab extends StatefulWidget {
  @override
  _ThirdTabState createState() => _ThirdTabState();
}

class _ThirdTabState extends State<ThirdTab> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AvatarGlow(
            endRadius: 60.0,
            child: Material(
              elevation: 8.0,
              shape: CircleBorder(),
              child: CircleAvatar(
                backgroundColor: Colors.teal,
                child: Icon(
                  Icons.android,
                  color: Colors.white,
                ),
                radius: 30.0,
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text("avatar_glow"),
        ],
      ),
    );
  }
}
