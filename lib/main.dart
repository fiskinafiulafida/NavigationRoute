import 'package:flutter/material.dart';
import 'package:tugas_navigation/pages/home_page.dart';
import 'package:tugas_navigation/pages/item_page.dart';

// mendefinisikan untuk 2 halaman home dan item
void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => HomePage(),
      '/item': (context) => ItemPage(),
    },
  ));
}
