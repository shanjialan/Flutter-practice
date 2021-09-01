import 'package:flutter/material.dart';

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  var _tabs = <Tab>[];
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this, initialIndex: 0);
    _tabs = <Tab>[
      Tab(
        text: "TabA",
      ),
      Tab(
        text: "TabB",
      ),
      Tab(
        text: "TabC",
      ),
    ];
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo'),
        bottom: TabBar(
          tabs: _tabs,
          indicatorColor: Colors.white,
          indicatorWeight: 5,
          indicatorSize: TabBarIndicatorSize.tab,
          controller: _controller,
        ),
      ),
      body: TabBarView(
          controller: _controller,
          children: _tabs
              .map((Tab tab) => Container(child: Center(child: Text('111'))))
              .toList()),
    );
  }
}
