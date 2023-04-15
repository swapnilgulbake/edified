import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../home_screen.dart';

class SignUpScreen extends StatefulWidget {
  static String id = 'register_page';

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Udified",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              margin: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.purple,
                    Colors.deepPurple,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SingleChildScrollView(
                    child: TextField(
                      keyboardType: TextInputType.name,
                      onChanged: (value) {},
                      decoration:
                      kInputDecoration.copyWith(hintText: 'Enter full name'),
                    ),
                  ),
                  SizedBox(height: 10,),

                  TextField(
                    keyboardType: TextInputType.phone,
                    onChanged: (value) {},
                    decoration:
                    kInputDecoration.copyWith(hintText: 'Enter mobile number'),
                  ),
                  SizedBox(height: 10,),

                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (value) {},
                    decoration:
                    kInputDecoration.copyWith(hintText: 'Enter email'),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  TextField(
                    obscureText: true,
                    onChanged: (value) {},
                    decoration:
                    kInputDecoration.copyWith(hintText: 'Enter password'),
                  ),
                  SizedBox(
                    height: 15,
                  ),

                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    child: Material(
                      elevation: 5.0,
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(30.0),
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.pushNamed(context, HomeScreen.id);
                        },
                        minWidth: 300.0,
                        height: 42.0,
                        child: Text(
                          'Continue',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}