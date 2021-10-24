import 'package:flutter/material.dart';

const InputDecoration kTextFieldStyle = InputDecoration(
  hintText: 'Type your message',
  hintStyle: TextStyle(color: Colors.black54),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(30)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blueAccent, width: 1),
    borderRadius: BorderRadius.all(Radius.circular(30)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blueAccent, width: 2),
    borderRadius: BorderRadius.all(Radius.circular(30)),
  ),
);
