import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DirectionalText(),
    );
  }
}

class DirectionalText extends StatefulWidget {
  @override
  _DirectionalTextState createState() => _DirectionalTextState();
}

class _DirectionalTextState extends State<DirectionalText> {
  String message = "Press an arrow key";
  String direction = "";

  FocusNode _focusNode = FocusNode();

  void updateMessage(String direction) {
    setState(() {
      this.direction = direction;
      message = direction == "Left" ? "Left" :
      direction == "Right" ? "Right" :
      direction == "Up" ? "Up" : "Down";
    });
  }

  @override
  void dispose() {
    _focusNode.dispose(); // Don't forget to dispose the focus node
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Directional Text")),
      body: Center(
        child: RawKeyboardListener(
          focusNode: _focusNode,
          onKey: (RawKeyEvent event) {
            if (event is RawKeyDownEvent) {
              switch (event.logicalKey.keyLabel) {
                case 'Arrow Left':
                  updateMessage("Left");
                  break;
                case 'Arrow Right':
                  updateMessage("Right");
                  break;
                case 'Arrow Up':
                  updateMessage("Up");
                  break;
                case 'Arrow Down':
                  updateMessage("Down");
                  break;
                default:
                  break;
              }
            }
          },
          child: Stack(
            alignment: Alignment.center,
            children: [
              // Directional Icon
              Positioned(
                top: direction == "Up" ? 20 : null,
                bottom: direction == "Down" ? 20 : null,
                left: direction == "Left" ? 20 : null,
                right: direction == "Right" ? 20 : null,
                child: Icon(
                  direction == "Left" ? Icons.arrow_left :
                  direction == "Right" ? Icons.arrow_right :
                  direction == "Up" ? Icons.arrow_upward :
                  direction == "Down" ? Icons.arrow_downward : Icons.arrow_forward,
                  size: 100,
                  color: Colors.blue,
                ),
              ),
              // Directional Message
              Positioned(
                top: 120,
                child: Text(
                  message,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              // Star Icon
              Positioned(
                top: 150,
                left: 50,
                child: Icon(
                  Icons.star,
                  size: 50,
                  color: Colors.yellow,
                ),
              ),
              // Heart Icon
              Positioned(
                top: 150,
                right: 50,
                child: Icon(
                  Icons.favorite,
                  size: 50,
                  color: Colors.red,
                ),
              ),
              // Thumbs Up Icon
              Positioned(
                bottom: 150,
                left: 50,
                child: Icon(
                  Icons.thumb_up,
                  size: 50,
                  color: Colors.green,
                ),
              ),
              // Thumbs Down Icon
              Positioned(
                bottom: 150,
                right: 50,
                child: Icon(
                  Icons.thumb_down,
                  size: 50,
                  color: Colors.purple,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
