import 'package:flutter/material.dart';

class MuteButton extends StatefulWidget {
  final Function onPressed;
  final bool muted;
  MuteButton({this.muted,this.onPressed});
  @override
  _MuteButtonState createState() => _MuteButtonState();
}

class _MuteButtonState extends State<MuteButton> {
  @override
  Widget build(BuildContext context) {
    return  RawMaterialButton(
      onPressed: widget.onPressed,
      child: Icon(
       widget.muted ? Icons.mic_off : Icons.mic,
        color: widget.muted ? Colors.white : Colors.blueAccent,
        size: 20.0,
      ),
      shape: CircleBorder(),
      elevation: 2.0,
      fillColor: widget.muted ? Colors.blueAccent : Colors.white,
      padding: const EdgeInsets.all(12.0),
    );
  }
}
