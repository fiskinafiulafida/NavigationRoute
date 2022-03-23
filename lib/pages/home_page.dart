import 'package:flutter/material.dart';
import 'package:tugas_navigation/models/item.dart';

import '../widgets/cardHome.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Item> items = [
      Item(
          name: 'Sugar',
          price: 12000,
          image: ("images/gula.jpg"),
          kodeBarang: 'ADK890'),
      Item(
          name: 'Salt',
          price: 2000,
          image: ("images/garam.jpg"),
          kodeBarang: 'ADK83S'),
      Item(
          name: 'Rice',
          price: 67000,
          image: ("images/beras.jpg"),
          kodeBarang: 'AKI3S'),
      Item(
          name: 'Tea',
          price: 5000,
          image: ("images/teh.jpg"),
          kodeBarang: 'BJK83S'),
      Item(
          name: 'Coffee Milk',
          price: 13000,
          image: ("images/kopsus.jpg"),
          kodeBarang: 'ADHP3S')
    ];

    return Scaffold(
        appBar: AppBar(
          title: const Text('Shopping List'),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: ListView.builder(
              padding: EdgeInsets.all(8),
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/item', arguments: item);
                  },
                  child: CardHome(item: item),
                );
              }),
        ));
  }
}
