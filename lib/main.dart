import 'package:flutter/material.dart';
import 'header.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: AppBarTheme(color: Colors.teal, centerTitle: true)),
      home: Hamberger(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Hamberger extends StatefulWidget {
  @override
  _HambergerState createState() => _HambergerState();
}

class _HambergerState extends State<Hamberger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // スクロールすると変化したり消えたりするアニメショーンをappbarで行いたい場合に便利
      // scaffoldのapppbarパラメータには使用されず、customscrollviewとともに使われる
      body: CustomScrollView(slivers: [
        SliverAppBar(
          // appbar 固定
          pinned: true,
          title: Text("Deliver me"),
          leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
          actions: [
            IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
          ],
        ),
        Header(),
      ]),
    );
  }
}
