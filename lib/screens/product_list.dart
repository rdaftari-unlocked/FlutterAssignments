import 'package:flutter/material.dart';
class ProductList extends StatelessWidget {
  final String title;
  ProductList({this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
    );
  }
}
