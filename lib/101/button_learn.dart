import 'package:flutter/material.dart';

class ButtonLearn extends StatefulWidget {
  const ButtonLearn({super.key});

  @override
  State<ButtonLearn> createState() => _ButtonLearnState();
}

class _ButtonLearnState extends State<ButtonLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Button Learn"),
        backgroundColor: Colors.green.shade900,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          IconButton(
            onPressed: () {
              print("IconButton basıldı!!");
            },
            icon: Icon(Icons.gamepad),
            iconSize: 45,
          ),
          TextButton(
            onPressed: () {
              print("TextButton basıldı!!");
            },
            child: Text("Text Button"),
          ),
          OutlinedButton(
            onPressed: () {
              print("OutlinedButton basıldı!!");
            },
            child: Text("Button"),
          ),
          ElevatedButton(
            onPressed: () {
              print("elevated button basıldı!!");
            },
            child: Icon(Icons.assistant_direction_rounded),
          ),
          FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.radio),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              print("Kırmızı kutuya tıklandı!!!");
            },
            child: Container(
              height: 100,
              width: 100,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
