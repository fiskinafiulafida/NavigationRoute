import 'package:flutter/material.dart';

import '../models/item.dart';

class rowHome extends StatelessWidget {
  const rowHome({
    Key? key,
    required this.item,
  }) : super(key: key);

  final Item item;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisSize: MainAxisSize.min, children: [
      Icon(
        Icons.shopping_basket_sharp,
        color: Color.fromARGB(255, 91, 204, 219),
        size: 20.0,
      ),
      Expanded(child: Text(item.name)),
      Expanded(
        child: Text(
          item.price.toString(),
          textAlign: TextAlign.end,
        ),
      )
    ]);
  }
}
