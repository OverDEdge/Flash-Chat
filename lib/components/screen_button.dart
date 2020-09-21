import 'package:flash_chat/utils/constants.dart';
import 'package:flutter/material.dart';

class ScreenButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  final Color color;

  ScreenButton({
    this.text,
    this.color,
    @required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: kScreenButtonPaddingVertical),
      child: Material(
        color: color,
        borderRadius:
            BorderRadius.all(Radius.circular(kScreenButtonBorderRadius)),
        elevation: kScreenButtonElevation,
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: kScreenButtonMinWidth,
          height: kScreenButtonHeight,
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
