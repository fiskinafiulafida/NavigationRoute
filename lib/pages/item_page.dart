import 'package:flutter/material.dart';
import 'package:tugas_navigation/models/item.dart';
import 'package:tugas_navigation/pages/DetailItem.dart';

import '../widgets/cardItem.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping List'),
      ),
      body: Center(
        child: CardItem(itemArgs: itemArgs),
      ),
    );
  }
}
