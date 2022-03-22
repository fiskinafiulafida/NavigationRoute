import 'package:flutter/material.dart';
import 'package:tugas_navigation/models/item.dart';

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
        child: Row(children: [
          Expanded(
              child: Text(
            itemArgs.name,
            textAlign: TextAlign.end,
          )),
          Text(' With '),
          Expanded(
            child: Text(
              itemArgs.price.toString(),
              textAlign: TextAlign.justify,
            ),
          )
        ]),
      ),
    );
  }
}
