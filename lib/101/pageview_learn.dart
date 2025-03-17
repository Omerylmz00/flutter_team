import 'package:flutter/material.dart';
import 'package:flutter_series/101/asset_learn.dart';
import 'package:flutter_series/101/card_listview_learn.dart';
import 'package:flutter_series/101/column_row_learn.dart';

class PageviewLearn extends StatefulWidget {
  const PageviewLearn({super.key});

  @override
  State<PageviewLearn> createState() => _PageviewLearnState();
}

class _PageviewLearnState extends State<PageviewLearn> {

  final pageViewController = PageController(viewportFraction: 0.9);
  int currentPageIndex = 0;

  void updateIndex(int index){
    setState(() {
      currentPageIndex = index + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            onPressed: () {
              pageViewController.previousPage(duration: Duration(seconds: 1), curve: Curves.fastOutSlowIn);
            },
            child: Icon(Icons.arrow_circle_left),
          ),
          FloatingActionButton(
            onPressed: () {
              pageViewController.nextPage(duration: Duration(seconds: 1), curve: Curves.fastOutSlowIn);
            },
            child: Icon(Icons.arrow_circle_right),
          ),
        ],
      ),
      appBar: AppBar(
        title: Text("Şu anki sayfa numarası : $currentPageIndex"),
      ),
      body: PageView(
        onPageChanged: updateIndex,
        controller: pageViewController,
        children: [
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.orange,
          ),
          Container(
            color: Colors.blue,
          ),
          CardListviewLearn(),
          AssetLearn(),
          ColumnRowLearn(),
        ],
      ),
    );
  }
}
