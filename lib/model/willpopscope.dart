import 'package:flutter/material.dart';

class WillPopScopeRoute extends StatefulWidget {
  const WillPopScopeRoute({Key? key}) : super(key: key);

  @override
  _WillPopScopeRouteState createState() => _WillPopScopeRouteState();
}

class _WillPopScopeRouteState extends State<WillPopScopeRoute> {
  var lastPressTime;
  var needShow = false;
  var timenow = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        if (lastPressTime == null ||
            timenow.difference(lastPressTime) > Duration(seconds: 1)) {
          lastPressTime = timenow;
          setState(() {
            needShow = true;
          });
          Future.delayed(
              Duration(seconds: 1),
              () => setState(() {
                    needShow = false;
                  }));
          return Future.value(false);
        }
        return Future.value(true);
      },
      child: Text(needShow ? "再次点击返回键退出" : ""),
    );
  }
}
