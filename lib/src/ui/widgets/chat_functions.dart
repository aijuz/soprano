import 'package:flutter/material.dart';
import 'package:soprano/src/ui/widgets/circular_icons.dart';
import 'package:soprano/src/ui/widgets/comment_field.dart';
import 'package:soprano/src/utils/assets.dart';

class ChatFunctions extends StatefulWidget {
  final TextEditingController textEditingController;
  ChatFunctions({this.textEditingController});

  @override
  _ChatFunctionsState createState() => _ChatFunctionsState();
}

class _ChatFunctionsState extends State<ChatFunctions> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
      height: 60,
      width: double.infinity,
      color: Colors.transparent,
      child: Row(
        children: <Widget>[
          Spacer(
            flex: 1,
          ),
          CommentField(
            textEditingController: widget.textEditingController,
          ),
          Spacer(
            flex: 1,
          ),
          CircularIcons(iconPath: Assets.CHAT_ICON_ASSET),
          Spacer(
            flex: 1,
          ),
          CircularIcons(iconPath: Assets.SHARE_ICON_ASSET),
          Spacer(
            flex: 1,
          ),
          CircularIcons(iconPath: Assets.GIFT_ICON_ASSET),
          Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}
