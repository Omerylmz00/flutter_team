import 'package:flutter/material.dart';

class AssetLearn extends StatelessWidget {
  const AssetLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assets Learn"),
        backgroundColor: const Color.fromRGBO(123, 45, 89, 1),
      ),
      body:  Column(
        children:  [
          const Text(
            "Tüm şehitlerimizin ruhu şad olsun !!!",
            style: TextStyle(
              fontFamily: 'YujiMai',
              fontSize: 20,
            ),
          ),
          const Text(
              "GDG on Campus Süleyman Demirel Üniversitesi",
              style: TextStyle(
                fontFamily: 'BebasNeue',
                fontSize: 20,
              ),
          ),
          Image.asset(
              'assets/images/img_01.jpg',
              height: 100,
              width: 100,
          ),
          const SizedBox(height: 20,),
          Image.network("https://picsum.photos/200/300"),
        ],
      ),
    );
  }
}
