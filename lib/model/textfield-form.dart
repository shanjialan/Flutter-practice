import 'package:flutter/material.dart';

class UserInfo extends StatefulWidget {
  const UserInfo({Key? key}) : super(key: key);

  @override
  _UserInfoState createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  FocusNode _passWordFocus = FocusNode();
  late String username;
  // GlobalKey<FormState> formGlobalKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20.0),
        margin: EdgeInsets.all(20.0),
        alignment: Alignment.center,
        // width: 500,
        height: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
              image: NetworkImage(
                  'https://img2.baidu.com/it/u=3504996860,1270664410&fm=26&fmt=auto&gp=0.jpg'),
              repeat: ImageRepeat.repeatY),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Login',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 48.0),
              ),
              Form(
                  child: Column(children: [
                TextField(
                  style: TextStyle(color: Colors.white),
                  keyboardType: TextInputType.emailAddress,
                  autofocus: true,
                  controller: _usernameController,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      labelText: '登录名',
                      hintText: '在此处输出你的邮箱号或者手机号'),
                  onChanged: (content) => print('UserName:$content'),
                ),
                TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    labelText: '密码',
                    hintText: '请输入密码',
                  ),
                  textInputAction: TextInputAction.done,
                  controller: _passwordController,
                  maxLines: 1,
                  maxLength: 8,
                  maxLengthEnforced: true,
                  obscureText: true,
                  onSubmitted: (content) => print(
                      "UserName:${_usernameController.text}-PassWord:${_passwordController.text}"),
                )
              ])),
              RaisedButton(
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  print(
                      "UserName:${_usernameController.text}-PassWord:${_passwordController.text}");
                },
                focusNode: _passWordFocus,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                color: Colors.green,
              ),
            ],
          ),
        ));
  }
}
