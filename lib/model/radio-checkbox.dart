import 'package:flutter/material.dart';

class RadioCheckboxDemo extends StatefulWidget {
  const RadioCheckboxDemo({Key? key}) : super(key: key);

  @override
  _RadioCheckboxDemoState createState() => _RadioCheckboxDemoState();
}

class _RadioCheckboxDemoState extends State<RadioCheckboxDemo> {
  var switchEnabled = false;
  var checkedSelected = false;
  var _groupValue;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Switch(
            value: switchEnabled,
            activeColor: Colors.red,
            onChanged: (value) {
              setState(() {
                switchEnabled = value;
              });
            }),
        Checkbox(
            activeColor: Colors.amber,
            value: checkedSelected,
            onChanged: (value) {
              setState(() {
                checkedSelected = value!;
              });
            }),
        Radio(
            value: 'Option1',
            groupValue: _groupValue,
            onChanged: (groupvalue) {
              setState(() {
                _groupValue = groupvalue;
              });
            }),
        Radio(
            value: 'Option2',
            groupValue: _groupValue,
            onChanged: (groupvalue) {
              setState(() {
                _groupValue = groupvalue;
              });
            }),
        Radio(
            value: 'Option3',
            groupValue: _groupValue,
            onChanged: (groupvalue) {
              setState(() {
                _groupValue = groupvalue;
              });
            }),
      ],
    );
  }
}
