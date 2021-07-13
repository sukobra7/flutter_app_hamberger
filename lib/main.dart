import 'package:flutter/material.dart';
import 'header.dart';
import 'categories.dart';
import 'hambergers_list.dart';
import 'burger_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          canvasColor: Colors.teal,
          primaryColor: Colors.teal,
          cardColor: Colors.white,
          appBarTheme: AppBarTheme(color: Colors.teal, centerTitle: true),
          bottomAppBarColor: Colors.teal,
          floatingActionButtonTheme:
              FloatingActionButtonThemeData(backgroundColor: Colors.orange)),
      home: Hamberger(),
      routes: {BurderPage.tag: (_) => BurderPage()},
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
      backgroundColor: Color.fromARGB(250, 250, 250, 255),
      // スクロールすると変化したり消えたりするアニメショーンをappbarで行いたい場合に便利
      // scaffoldのappbarパラメータには使用されず、customscrollviewとともに使われる
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
        Categories(),
        HambergersList(row: 1),
        HambergersList(row: 2),
      ]),
      //ボタンと重なるtextを表示
      extendBody: true,
      // floatbuttonを真ん中に配置
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: Icon(Icons.home)),
      // 画像などのコンテンツの角を丸くしたい場合はClipRRectが便利
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(45)),
        child: Container(
          color: Colors.black38,
          child: BottomAppBar(
              shape: CircularNotchedRectangle(),
              child: Row(
                children: [
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.add_alert),
                    color: Colors.white,
                    onPressed: () {},
                  ),
                  Spacer(),
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.turned_in),
                    color: Colors.white,
                    onPressed: () {},
                  ),
                  Spacer(),
                ],
              )),
        ),
      ),
    );
  }
}
