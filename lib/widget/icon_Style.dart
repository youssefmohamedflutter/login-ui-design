import 'package:flutter/material.dart';

class IconStyle extends StatelessWidget {
  const IconStyle({super.key, required this.icon});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      color: Colors.white,
      iconSize: 25,
      highlightColor: Colors.black38,
      style: IconButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      onPressed: () {},
      icon: Icon(icon),
    );
  }
}
