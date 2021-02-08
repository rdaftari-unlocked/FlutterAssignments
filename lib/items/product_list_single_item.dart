import 'package:flutter/material.dart';
import 'package:shopping_app/screens/product_full_details.dart';
import 'package:shopping_app/screens/product_list.dart';

class ProductSingleList extends StatelessWidget {
  final String title ;
  final String imgUrl;

  ProductSingleList(this.title,this.imgUrl);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context)=> ProductFullDetails())
        );

      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(2),bottomLeft: Radius.circular(2),bottomRight: Radius.circular(50)),
        ),
        margin: EdgeInsets.all(10),
        child: Container(

          decoration: BoxDecoration(
              color: Colors.black.withAlpha(200),
             // colorBlendMode: BlendMode.modulate,

              borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(2),bottomLeft: Radius.circular(2),bottomRight: Radius.circular(50)),
              image: DecorationImage(
                  colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop),
              fit: BoxFit.cover,
              image: NetworkImage(imgUrl)

            )
          ),
          child: Column(
            children: [
              Container(
                  height: 100,
              ),
              SizedBox(
                width: 30,
              ),
              Center(child:Text(title)),
            ],
          ),
        ),
      ),
    );
  }
}
