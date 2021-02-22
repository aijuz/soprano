import 'package:flutter/material.dart';
import 'package:soprano/src/utils/assets.dart';
import 'package:soprano/src/utils/util_functions.dart';

class CommentField extends StatefulWidget {
  final TextEditingController textEditingController;
  CommentField({this.textEditingController});
  @override
  _CommentFieldState createState() => _CommentFieldState();
}

class _CommentFieldState extends State<CommentField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth(context, dividedBy: 2.2),
      color: Colors.transparent,
      child: TextField(
        style: TextStyle(fontSize: 20),
        controller: widget.textEditingController,
        decoration: new InputDecoration(
            fillColor: Colors.white,
            filled: true,
            focusedBorder: new OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                const Radius.circular(20.0),
              ),
            ),
            border: new OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                const Radius.circular(20.0),
              ),
            ),
            prefixIcon: CircleAvatar(
              backgroundColor: Colors.transparent,
              child: Image.asset(
                Assets.COMMENT_ICON_ASSET,
                color: Colors.red,
              ),
              radius: 15,
            )),
      ),
    );
  }
}
