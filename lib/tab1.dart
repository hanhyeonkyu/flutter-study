import 'package:flutter/material.dart';

class Tab1 extends StatefulWidget {
  @override
  _Tab1State createState() => _Tab1State();
}

class _Tab1State extends State<Tab1> {
  List<String> list;

  @override
  void initState() {
    list = ["1", "2", "3"];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(key: PageStorageKey("FirstList"), itemCount: list.length, itemBuilder: (context, index) {
      return Text(list[index]);
    });
  }
}