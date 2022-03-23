import 'package:flutter/material.dart';

import '../models/item.dart';

class DetailItem extends StatelessWidget {
  const DetailItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final todo = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Center(
          child: Hero(
            tag: 'imageHero',
            child: Image.asset(
              todo.image,
              fit: BoxFit.fill,
            ),
            // child: Image.network(
            //   'https://picsum.photos/250?image=9',
            // ),
          ),
        ),
      ),
    );
  }
}
