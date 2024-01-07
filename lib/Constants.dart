import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xff2B475E);
const kLoge = 'assets/images/scholar.png';
const kMessagesCollections = 'message';
const kMessage = 'messages';
showSnackBar(BuildContext context, String text) {
  return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    duration: Duration(days: 1),
    content: Text(text),
    action: SnackBarAction(label: "close", onPressed: () {}),
  ));
}

const decorationTextfield = InputDecoration(
  hintStyle: TextStyle(color: Colors.white),
  border: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white),
  ),
);
