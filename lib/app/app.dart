import 'package:flutter/material.dart';

import 'package:colors/app/views/screens/home.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Colors',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}