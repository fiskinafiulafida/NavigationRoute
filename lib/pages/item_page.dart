import 'package:flutter/material.dart';
import 'package:tugas_navigation/models/item.dart';
import 'package:tugas_navigation/pages/DetailItem.dart';

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
        child: Card(
          child: Container(
            margin: EdgeInsets.all(8),
            child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // gambar
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
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
                ]),
          ),
        ),
      ),
    );
  }
}
