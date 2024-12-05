import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StatelessLearn extends StatefulWidget {

  StatelessLearn({super.key});

  @override
  State<StatelessLearn> createState() => _StatelessLearnState();
}

class _StatelessLearnState extends State<StatelessLearn> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("State Managment"),
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Sayaç Değeri : $_counter"),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _counter++;
                });
                print("Sayaç Değer :  $_counter");
              },
              child: const Text("Artırmak için basın!!"),
            )
          ],
        ),
      ),
    );
  }
}
