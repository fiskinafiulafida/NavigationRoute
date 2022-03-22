import 'package:flutter/material.dart';

class DetailItem extends StatelessWidget {
  const DetailItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Center(
          child: Hero(
            tag: 'imageHero',
            child: Image(
              image: AssetImage("images/garam.jpg"),
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
