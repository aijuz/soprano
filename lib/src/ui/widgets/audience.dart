import 'package:flutter/material.dart';
import 'package:soprano/src/ui/widgets/user_icon.dart';
import 'package:soprano/src/utils/assets.dart';

class Audience extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        UserIcon(
          imagePath: Assets.USER_4,
        ),
        SizedBox(
          height: 10,
        ),
        UserIcon(
          imagePath: Assets.USER_5,
        ),
      ],
    );
  }
}
