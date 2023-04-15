import 'package:flutter/material.dart';

const kInputDecoration = InputDecoration(
  fillColor: Colors.white38,
  filled: true,
  hintText: 'Enter a text',
  contentPadding:
  EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(5.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide:
    BorderSide( width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(5.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide:
    BorderSide( width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(5.0)),
  ),
);