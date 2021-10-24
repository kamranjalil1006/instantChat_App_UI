import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextInputType textInputType;
  final IconData preIcon;
  final double topPadding;
  final double bottomPadding;
  const CustomTextField({
    Key? key,
    required this.textInputType,
    required this.hintText,
    required this.preIcon,
    required this.topPadding,
    required this.bottomPadding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: EdgeInsets.only(
            right: 30, left: 30, top: topPadding, bottom: bottomPadding),
        child: TextField(
          keyboardType: textInputType,
          decoration: InputDecoration(
            prefixIcon: Icon(preIcon, size: 20),
            hintText: hintText,
            hintStyle: const TextStyle(fontSize: 15, color: Colors.black54),
          ),
        ),
      ),
    );
  }
}
