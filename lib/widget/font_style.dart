import 'package:flutter/cupertino.dart';

class StyleText extends StatelessWidget {
  const StyleText({
    super.key,
    required this.text,
    required this.fontSize,
    required this.textColor,
  });
  final String text;
  final double fontSize;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: textColor,
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
