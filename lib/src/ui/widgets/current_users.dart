import 'package:flutter/material.dart';
import 'package:soprano/src/ui/widgets/user_icon.dart';
import 'package:soprano/src/utils/assets.dart';
import 'package:soprano/src/utils/util_functions.dart';

class CurrentUsers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              width: screenWidth(context, dividedBy: 3),
              height: screenHeight(context, dividedBy: 20),
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(screenWidth(context, dividedBy: 12)),
                color: Colors.white.withOpacity(.13),
              ),
              child: Row(
                children: [
                  UserIcon(
                    imagePath: Assets.USER_IMAGE_ASSET,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 30),
                    child: Icon(
                      Icons.visibility,
                      size: 10,
                      color: Colors.orange,
                    ),
                  ),
                  Spacer(
                    flex: 6,
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xffFF2D55)),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                ],
              ),
            ),
            Spacer(
              flex: 1,
            ),
            UserIcon(
              imagePath: Assets.USER_1,
            ),
            Spacer(
              flex: 1,
            ),
            UserIcon(
              imagePath: Assets.USER_2,
            ),
            Spacer(
              flex: 1,
            ),
            UserIcon(
              imagePath: Assets.USER_3,
            ),
            Spacer(
              flex: 1,
            ),
            Container(
              width: 30,
              height: 30,
              child: Icon(
                Icons.close,
                color: Colors.black,
              ),
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.white),
            ),
            Spacer(
              flex: 8,
            ),
          ],
        ),
        Spacer(
          flex: 1,
        ),
        Container(
          width: screenWidth(context, dividedBy: 3.9),
          height: screenHeight(context, dividedBy: 30),
          decoration: BoxDecoration(
            borderRadius:
                BorderRadius.circular(screenWidth(context, dividedBy: 12)),
            color: Colors.white,
          ),
          child: Row(
            children: [
              UserIcon(
                imagePath: Assets.DIAMOND,
              ),
              Spacer(
                flex: 6,
              ),
              Container(
                width: 30,
                height: 30,
                child: Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.black,
                ),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.white),
              ),
              Spacer(
                flex: 1,
              ),
            ],
          ),
        ),
        Spacer(
          flex: 60,
        )
      ],
    );
  }
}
