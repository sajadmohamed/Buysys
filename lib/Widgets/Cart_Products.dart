import 'package:buysystem/Controller/Cart_controller.dart';
import 'package:flutter/material.dart';
import 'package:buysystem/model/product_models.dart';
import 'package:get/get.dart';

class CartProducts extends StatelessWidget {
  final  CartController controller = Get.find();
    CartProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => SizedBox(
        height: 600,
        child: ListView.builder(
          itemCount: controller.products.length,
          itemBuilder: ( BuildContext context , int index){
              return CartProductscard(
                  controller: controller,
                  product: controller.products.keys.toList()[index],
                  quantity: controller.products.values.toList()[index],
                  index: index
              );
          },
        ),
      ),
    );
  }
}
class CartProductscard extends StatelessWidget {
  final CartController controller;
  final Product product;
  final int quantity;
  final int index;

  const CartProductscard({
    Key? key,
    required this.controller,
    required this.product,
    required this.quantity,
    required this.index
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(product.imageUrl),
          ),
          SizedBox(width: 20,),
          Expanded(child: Text(product.name)),
          IconButton(onPressed: (){
            controller.addProduct(product);
          }, icon: Icon(Icons.add_circle)),
          Text('${quantity}'),
          IconButton(onPressed: (){
            controller.removeProduct(product);
          }, icon: Icon(Icons.remove_circle)),

        ],
      ),
    )
    ;
  }
}

