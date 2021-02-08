import 'package:flutter/material.dart';
import 'package:shopping_app/items/category_list_single_item.dart';
import 'package:shopping_app/items/product_list_single_item.dart';
import 'package:shopping_app/models/dummy_categories.dart';
class ProductList extends StatelessWidget {
  final String title;
  ProductList({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
      body: Container(
      child: ListView(
        shrinkWrap: true,
        //gridDelegate:
        //  SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 200 , childAspectRatio: 3/3 , crossAxisSpacing: 20,mainAxisSpacing: 20),
        children: DUMMY_PRODUCTS.where((element){
          return element.category.contains(title);
        }).map((catData) => ProductSingleList(catData.title,catData.image)).toList(),
      ),
      ),
    );
  }
}
