import 'package:flutter/material.dart';

class CardListviewLearn extends StatefulWidget {
  const CardListviewLearn({super.key});

  @override
  State<CardListviewLearn> createState() => _CardListviewLearnState();
}

class _CardListviewLearnState extends State<CardListviewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Listview Example"),
        ),
        body: ListView.separated(
            // index listedeki her bir elemanın sıra değerini tutar. ve 0'dan başlar.
            separatorBuilder: (context, index) => const Divider(height: 1,),
            itemCount: 10,
            itemBuilder: (context, index) {
              return Card(
                //elevation: 5,
                child: ListTile(
                  leading: CircleAvatar(
                     child: Text("${index +1}"),
                  ),
                  title: Text("Ürün Numarası : ${index + 1} "),
                  subtitle: Text("Ürün fiyatı ${index + 15} TL'dir."),
                  trailing: const Icon(Icons.arrow_circle_right_outlined),
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("${index+1}. Ürün bilgisi verildi."),)
                    );
                  },
                ),
              );
            },
      )
    );
  }
}
