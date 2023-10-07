import 'package:buysystem/Permissions/permission.dart';
import 'package:buysystem/Widgets/Cart_Products.dart';
import 'package:buysystem/Widgets/Cart_Total.dart';
import 'package:flutter/material.dart';
class cartscreen extends StatelessWidget {
  const cartscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("your cart")),),
      body: ListView(
       children: [
         Column(
           children: [
             CartProducts(),
             CartTotal(),
             permission_location()
           ],
         ),
       ],
      ),
    );
  }
}

