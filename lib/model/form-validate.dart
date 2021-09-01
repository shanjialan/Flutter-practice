import 'package:flutter/material.dart';

class FormValidate extends StatefulWidget {
  const FormValidate({Key? key}) : super(key: key);

  @override
  _FormValidateState createState() => _FormValidateState();
}

class _FormValidateState extends State<FormValidate> {
  GlobalKey<FormState> formGlobalKey = GlobalKey<FormState>();
  late String username;
  void save() {
    var form = formGlobalKey.currentState;
    if (form!.validate()) {
      form.save();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
          child: TextFormField(
              decoration: InputDecoration(labelText: '姓名'),
              validator: (content) {
                if (content.toString().length <= 0) {
                  return '姓名太短';
                } else if (content.toString().length > 8) {
                  return '姓名太长';
                }
              },
              onSaved: (content) {
                username = content!;
              }),
        ),
        RaisedButton(
          onPressed: save,
          child: Text('Save'),
        )
      ],
    );
  }
}
