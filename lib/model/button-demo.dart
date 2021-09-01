import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  const ButtonDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RaisedButton(
          child: Text('RaisedButton'),
          onPressed: () => print("RadsedButton"),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        ),
        FlatButton(
            onPressed: () => print('FlatButton'), child: Text('FlatButton')),
        IconButton(
            onPressed: () => print('IconButton'), icon: Icon(Icons.search)),
        OutlineButton(
          onPressed: () => print('FlatButton'),
          child: Text('OutlineButton'),
        )
      ],
    );
  }
}
