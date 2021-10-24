import 'package:flutter/material.dart';

class CustomActionButton extends StatelessWidget {
  final String buttonText;
  final double topWidgetPadding;
  final double horizontalTextPadding;
  final Widget screenName;
  const CustomActionButton(
      {Key? key,
      required this.buttonText,
      required this.topWidgetPadding,
      required this.horizontalTextPadding,
      required this.screenName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: EdgeInsets.only(top: topWidgetPadding, bottom: 20),
        child: MaterialButton(
          height: 40,
          color: Theme.of(context).primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => screenName));
          },
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: horizontalTextPadding),
            child: Text(
              buttonText,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
