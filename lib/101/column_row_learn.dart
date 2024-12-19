import 'package:flutter/material.dart';

class ColumnRowLearn extends StatefulWidget {
  const ColumnRowLearn({super.key});

  @override
  State<ColumnRowLearn> createState() => _ColumnRowLearnState();
}

class _ColumnRowLearnState extends State<ColumnRowLearn> {
  final String url_background = 'https://img.freepik.com/free-photo/3d-render-spotlights-grunge-brick-wall_1048-6284.jpg?t=st=1734643954~exp=1734647554~hmac=fa512f5ab49fdf136e1056f15a85a08be112ced2b3a20342af59fecaef9ea483&w=1380';
  final String url_profile = 'https://images.unsplash.com/photo-1648884266836-517ad583e720?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Page'),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          SizedBox(height: 10,),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(url_background),
                      fit: BoxFit.cover,
                  )
                ),
              ),
              CircleAvatar(
                radius: 75,
                backgroundImage: NetworkImage(url_profile),
              ),
            ],
          ),
          SizedBox(height: 20,),
          const Text(
              "Omer Faruk Yilmaz",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: () {}, child: Text('Takip Et')),
              IconButton(onPressed: () {}, icon: Icon(Icons.report_problem)),
            ],
          )
        ],
      ),
    );
  }
}
