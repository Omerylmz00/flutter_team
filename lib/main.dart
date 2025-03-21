import 'package:flutter/material.dart';
import 'package:flutter_series/state/state_learn.dart';
import '101/asset_learn.dart';
import '101/button_learn.dart';

import '101/card_listview_learn.dart';
import '101/column_row_learn.dart';
import '101/pageview_learn.dart';
import '101/scaffold_learn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      home: PageviewLearn(),
    );
  }
}


