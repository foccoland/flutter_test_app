import 'package:flutter/material.dart';

class MagicButtonWidget extends StatefulWidget {
  @override
  _MagicButtonWidgetState createState() => _MagicButtonWidgetState();
}

class _MagicButtonWidgetState extends State<MagicButtonWidget> {
  bool pressed = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          ElevatedButton(
              onPressed: _toggleMagic,
              child: Text(pressed ? "Magic!" : "No magic."),
              style: ElevatedButton.styleFrom(
                  primary: pressed ? Colors.red : Colors.blueGrey)),
          Icon(pressed ? Icons.ac_unit : Icons.access_alarm),
        ],
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      ),
    );
  }

  void _toggleMagic() {
    setState(() {
      pressed ? pressed = false : pressed = true;
    });
  }
}