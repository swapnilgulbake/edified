import 'package:flutter/material.dart';

class EmptyScreen extends StatelessWidget {
  static String id = 'empty_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Comming Soon',style: TextStyle(fontSize: 50),),
      ),
    );
  }
}
