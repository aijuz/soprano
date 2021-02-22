import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:flutter/material.dart';
import 'package:soprano/src/utils/util_functions.dart';

class CallToolBar extends StatefulWidget {
  final ClientRole role;
  final bool muted;
  final Function onToggleMute;
  final Function switchCamera;
  final RtcEngine engine;
  CallToolBar(
      {this.role,
      this.muted,
      this.onToggleMute,
      this.engine,
      this.switchCamera});
  @override
  _CallToolBarState createState() => _CallToolBarState();
}

class _CallToolBarState extends State<CallToolBar> {
  @override
  Widget build(BuildContext context) {
    if (widget.role == ClientRole.Audience) return Container();
    return Container(
      alignment: Alignment.bottomCenter,
      padding: const EdgeInsets.symmetric(vertical: 48),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RawMaterialButton(
            onPressed: widget.onToggleMute,
            child: Icon(
              widget.muted ? Icons.mic_off : Icons.mic,
              color: widget.muted ? Colors.white : Colors.blueAccent,
              size: 20.0,
            ),
            shape: CircleBorder(),
            elevation: 2.0,
            fillColor: widget.muted ? Colors.blueAccent : Colors.white,
            padding: const EdgeInsets.all(12.0),
          ),
          RawMaterialButton(
            onPressed: () => pop(context),
            child: Icon(
              Icons.call_end,
              color: Colors.white,
              size: 35.0,
            ),
            shape: CircleBorder(),
            elevation: 2.0,
            fillColor: Colors.redAccent,
            padding: const EdgeInsets.all(15.0),
          ),
          RawMaterialButton(
            onPressed: widget.switchCamera,
            child: Icon(
              Icons.switch_camera,
              color: Colors.blueAccent,
              size: 20.0,
            ),
            shape: CircleBorder(),
            elevation: 2.0,
            fillColor: Colors.white,
            padding: const EdgeInsets.all(12.0),
          )
        ],
      ),
    );
  }
}
