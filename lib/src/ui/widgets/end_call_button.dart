import 'package:flutter/material.dart';
import 'package:soprano/src/utils/util_functions.dart';

class EndCallButton extends StatelessWidget {
  void _onCallEnd(BuildContext context) {
    pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () => _onCallEnd(context),
      child: Icon(
        Icons.call_end,
        color: Colors.white,
        size: 35.0,
      ),
      shape: CircleBorder(),
      elevation: 2.0,
      fillColor: Colors.redAccent,
      padding: const EdgeInsets.all(15.0),
    );
  }
}
