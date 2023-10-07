import 'package:buysystem/Controller/Cart_controller.dart';
import 'package:buysystem/model/product_models.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class CatalogProducts extends StatelessWidget {
  const CatalogProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: ListView.builder(
            itemCount: Product.products.length,
           itemBuilder: (BuildContext context ,int index){
              return CatalogProductCard(index : index);
           } ,
        )
    );
  }
}
class CatalogProductCard extends StatelessWidget {
  final cartcontroller = Get.put(CartController());
  final int index;
   CatalogProductCard({Key? key, required this.index }) :
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(
              Product.products[index].imageUrl,
            ),
          ),
          SizedBox(width: 50,),
          Expanded(
              child: Text(Product.products[index].name,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),)
          ),
          SizedBox(width: 50,),
          Expanded(
              child: Text('${Product.products[index].price}',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 18),)
          ),
          IconButton(
              onPressed: (){cartcontroller.addProduct(Product.products[index]);},
              icon: Icon(Icons.add_circle,color: Colors.black,)
          )

        ],
      ),
    );
  }
}

