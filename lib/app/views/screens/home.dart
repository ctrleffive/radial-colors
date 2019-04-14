import 'package:colors/app/views/widgets/colorer.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Colorer(
          size: MediaQuery.of(context).size.width / 2,
          value: 0
        ),
      ),
    );
  }
}
