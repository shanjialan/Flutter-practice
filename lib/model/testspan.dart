import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TextRichDemo extends StatelessWidget {
  const TextRichDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      (Text.rich(
        TextSpan(children: [
          TextSpan(
              text: "我的世界q", style: TextStyle(color: Colors.red, fontSize: 25)),
          TextSpan(
              text: "我的世界w",
              style: TextStyle(color: Colors.blue, fontSize: 25),
              recognizer: TapGestureRecognizer()..onTap = () => print("000")),
        ]),
      )),
      DefaultTextStyle(
        style: TextStyle(color: Colors.green, fontSize: 20.0),
        textAlign: TextAlign.start,
        child: Column(
          children: [
            Text("Green Text"),
            Text("another Text",
                style: TextStyle(inherit: false, color: Colors.blue)),
            Text("my color is not green", style: TextStyle(color: Colors.red))
          ],
        ),
      ),
    ]);
  }
}
