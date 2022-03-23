import 'package:flutter/material.dart';

import '../models/item.dart';
import '../pages/DetailItem.dart';

class RowItem extends StatelessWidget {
  const RowItem({
    Key? key,
    required this.itemArgs,
  }) : super(key: key);

  final Item itemArgs;

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // gambar
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const DetailItem();
              }));
            },
            child: Hero(
              tag: 'imageHero',
              child: Image.asset(
                itemArgs.image,
                fit: BoxFit.fill,
              ),
            ),
          ),
          // detail text
          Expanded(
              child: Text(
            itemArgs.name,
            textAlign: TextAlign.end,
          )),
          Text(', Kode : '),
          Expanded(
            child: Text(
              itemArgs.kodeBarang,
              textAlign: TextAlign.justify,
            ),
          ),
          Text(' Rp.'),
          Expanded(
            child: Text(
              itemArgs.price.toString(),
              textAlign: TextAlign.justify,
            ),
          )
        ]);
  }
}
