import 'package:flutter/material.dart';
import 'package:flutter_arcade_store/app/core/ui/theme/fonts/roboto_style.dart';

class TextRegular extends StatelessWidget {
  const TextRegular(
      {@required this.text,
      this.fontSize = 14,
      this.fontColor,
      Key? key})
      : super(key: key);

  final String? text;
  final double? fontSize;
  final Color? fontColor;

  @override
  Widget build(BuildContext context) {
    return Text(text!,
        style: RobotoStyle.regular(context)
            .merge(TextStyle(color: fontColor, fontSize: fontSize)));
  }
}
