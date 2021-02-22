import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:soprano/src/ui/widgets/audience.dart';
import 'package:soprano/src/ui/widgets/chat_functions.dart';
import 'package:soprano/src/ui/widgets/current_users.dart';
import 'package:soprano/src/ui/widgets/user_icon.dart';
import 'package:soprano/src/utils/assets.dart';
import 'package:soprano/src/utils/util_functions.dart';

class LiveStream extends StatefulWidget {
  @override
  _LiveStreamState createState() => _LiveStreamState();
}

class _LiveStreamState extends State<LiveStream> {
  TextEditingController commentTextEditingController =
      new TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.white));
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: screenWidth(context, dividedBy: 1),
            height: screenHeight(context, dividedBy: 1),
            child: Image.asset(
              Assets.BG_IMAGE_ASSET,
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(
                  top: screenHeight(context, dividedBy: 16),
                  left: screenWidth(context, dividedBy: 20)),
              child: CurrentUsers(),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                  left: screenWidth(context, dividedBy: 20),
                  bottom: screenHeight(context, dividedBy: 14)),
              child: Audience(),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding:
                  EdgeInsets.only(bottom: screenHeight(context, dividedBy: 5)),
              child: UserIcon(
                imagePath: Assets.SMILEY,
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(
                  top: screenHeight(context, dividedBy: 3), right: 10),
              child: Container(
                width: screenWidth(context, dividedBy: 10),
                height: screenHeight(context, dividedBy: 5),
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(.50),
                    borderRadius: BorderRadius.circular(
                        screenWidth(context, dividedBy: 3))),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Spacer(
                      flex: 1,
                    ),
                    Icon(
                      Icons.favorite,
                      color: Colors.black,
                    ),
                    Spacer(
                      flex: 5,
                    ),
                    Icon(
                      Icons.visibility,
                      color: Colors.white,
                    ),
                    Spacer(
                      flex: 2,
                    )
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: ChatFunctions(
              textEditingController: commentTextEditingController,
            ),
          ),
        ],
      ),
    );
  }
}
