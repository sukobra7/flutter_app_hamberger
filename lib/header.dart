import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // リストやグリッドを一緒にスクロールさせたい時、もっと複雑なスクロールをさせたい場合
    // delegate 表示される分だけビルドする仕組みにより、パフォーマンス改善
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          //子のWidgetをStackの端から位置を指定して子を配置する
          //Widgetを重ねる場合に使用します
          Stack(children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  height: size.height / 5,
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(45),
                    ),
                    boxShadow: [
                      BoxShadow(blurRadius: 2),
                    ],
                  ),
                  child: Column(children: [
                    SizedBox(height: 20),
                    Row(children: [
                      CircleAvatar(
                        backgroundColor: Colors.white70,
                        radius: 35,
                        child: CircleAvatar(
                          backgroundImage: AssetImage("images/kimura.jpeg"),
                          radius: 30,
                        ),
                      ),
                      SizedBox(width: 5),
                      Column(
                        children: [
                          Text(
                            'Kazumasa',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.black54,
                            ),
                            child: Text(
                              'GOLD MEMBER',
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                        ],
                      ),
                      Spacer(),
                      Text(
                        "154 \$ can",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ]),
                  ]),
                ),
                SizedBox(height: 20),
              ],
            ),
            Positioned(
                bottom: 0,
                child: Container(
                  height: 50,
                  width: size.width,
                  child: Card(
                    elevation: 3,
                    margin: EdgeInsets.symmetric(horizontal: 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                          // 下線を削除
                          border: InputBorder.none,
                          labelText: "What dose your belly want to eat?",
                          suffixIcon: Icon(Icons.search),
                          contentPadding: EdgeInsets.only(left: 20)),
                    ),
                  ),
                ))
          ]),
        ],
      ),
    );
  }
}
