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
          Column(
            children: [
              Container(
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
              ),
            ],
          ),
        ],
      ),
    );
  }
}
