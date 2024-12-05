import 'package:flutter/material.dart';

class ScaffoldLearn extends StatefulWidget {
  const ScaffoldLearn({super.key});

  @override
  State<ScaffoldLearn> createState() => _ScaffoldLearnState();
}

class _ScaffoldLearnState extends State<ScaffoldLearn> {
  bool isDarkMode = false; // Temel Durum : Açık Mod

  void changeColors(){
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDarkMode ? Colors.black : Colors.white,
      appBar: AppBar(
        title: Text(
            'Scaffold Learn',
            style: TextStyle(
              color: isDarkMode ? Colors.white : Colors.blue,
            ),
        ),
        backgroundColor: isDarkMode ? Colors.black : Colors.red,
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'GDG on CampusGDG on CampusGDG on Campus',
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                textAlign: TextAlign.center,
                style: ProjectStyles.textStyle,
            ),
            Text(
              'GDG on CampusGDG on CampusGDG on Campus',
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              textAlign: TextAlign.center,
              style: ProjectStyles.textStyle
            ),
            Text(
                'Süleyman Demirel Üniversitesi'

            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          changeColors();
        },
        child: Icon(Icons.light_mode_rounded),
        backgroundColor: isDarkMode ? Colors.white : Colors.black,
        foregroundColor: isDarkMode ? Colors.black : Colors.white,
      ),
    );
  }
}

class ProjectStyles {
  static TextStyle textStyle = const TextStyle(
    decoration: TextDecoration.underline,
    color: Colors.blue,
    fontWeight: FontWeight.bold,
    fontSize: 12,
    letterSpacing: 4,
    wordSpacing: 2,
  );
}