import 'package:flutter/material.dart';

class Test1Dialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Dialog1'),
      ),
      body: Container(
        width: deviceSize.width,
        height: deviceSize.height,
        decoration: BoxDecoration(color: Colors.amber),
        child: Center(
          child: Text(
            "Test Dialog 1",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
