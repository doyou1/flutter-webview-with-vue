import 'package:flutter/material.dart';

class Test2Dialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Dialog2'),
      ),
      body: Container(
        width: deviceSize.width,
        height: deviceSize.height,
        decoration: BoxDecoration(color: Colors.amber),
        child: Center(
          child: Text(
            "Test Dialog 2",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
