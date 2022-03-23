import 'package:flutter/material.dart';
import 'package:tugas_navigation/widgets/rowHome.dart';

import '../models/item.dart';

class CardHome extends StatelessWidget {
  const CardHome({
    Key? key,
    required this.item,
  }) : super(key: key);

  final Item item;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        margin: EdgeInsets.all(8),
        child: rowHome(item: item),
      ),
    );
  }
}
