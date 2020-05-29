import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:json_table/json_table.dart';

class SecondTab extends StatefulWidget {
  @override
  _SecondTabState createState() => _SecondTabState();
}

class _SecondTabState extends State<SecondTab> {
  final String jsonSample =
      '[{"name":"Ram","email":"ram@gmail.com","age":23,"DOB":"1990-12-01"},'
      '{"name":"Shyam","email":"shyam23@gmail.com","age":18,"DOB":"1995-07-01"},'
      '{"name":"John","email":"john@gmail.com","age":10,"DOB":"2000-02-24"},'
      '{"name":"Ram","age":12,"DOB":"2000-02-01"}]';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var json = jsonDecode(jsonSample);

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          JsonTable(json),
          SizedBox(
            height: 16,
          ),
          Text("json_table"),
        ],
      ),
    );
  }
}
