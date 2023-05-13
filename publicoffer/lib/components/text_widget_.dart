import 'package:flutter/material.dart';
import '../constants/constants.dart';

Widget textWidget(String str1, String str2) {
  return RichText(
    overflow: TextOverflow.ellipsis,
    text: TextSpan(
      children: [
        TextSpan(text: str1, style: boldStyle),
        TextSpan(
          text: str2,
          style: style,
        ),
      ],
    ),
  );
}