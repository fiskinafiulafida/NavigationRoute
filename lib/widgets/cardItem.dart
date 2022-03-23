import 'package:flutter/material.dart';
import 'package:tugas_navigation/widgets/rowItem.dart';

import '../models/item.dart';
import '../pages/DetailItem.dart';

class CardItem extends StatelessWidget {
  const CardItem({
    Key? key,
    required this.itemArgs,
  }) : super(key: key);

  final Item itemArgs;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        margin: EdgeInsets.all(8),
        child: RowItem(itemArgs: itemArgs),
      ),
    );
  }
}
