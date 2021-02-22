import 'package:flutter/material.dart';

class CircularIcons extends StatefulWidget {
  final String iconPath;
  final Function onPressed;
  CircularIcons({this.iconPath, this.onPressed});
  @override
  _CircularIconsState createState() => _CircularIconsState();
}

class _CircularIconsState extends State<CircularIcons> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        child: Image.asset(
          widget.iconPath,
        ),
        radius: 25,
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }
}
