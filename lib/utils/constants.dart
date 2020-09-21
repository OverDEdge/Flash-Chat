import 'package:flutter/material.dart';

const double kInputFieldBorderRadius = 32.0;
const double kInputFieldPaddingVertical = 10.0;
const double kInputFieldPaddingHorizontal = 20.0;

const double kScreenButtonPaddingVertical = 16.0;
const double kScreenButtonBorderRadius = 30.0;
const double kScreenButtonElevation = 5.0;
const double kScreenButtonMinWidth = 200.0;
const double kScreenButtonHeight = 45.0;

const kSendButtonTextStyle = TextStyle(
  color: Colors.lightBlueAccent,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

const kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText: 'Type your message here...',
  border: InputBorder.none,
);

const kMessageContainerDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
  ),
);

const InputDecoration kTextFieldDecoration = InputDecoration(
  hintText: '',
  hintStyle: TextStyle(
    fontStyle: FontStyle.italic,
  ),
  contentPadding: EdgeInsets.symmetric(
    vertical: kInputFieldPaddingVertical,
    horizontal: kInputFieldPaddingVertical,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(kInputFieldBorderRadius)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(kInputFieldBorderRadius)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(kInputFieldBorderRadius)),
  ),
);
