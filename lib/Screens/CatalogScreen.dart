import 'package:buysystem/Screens/Cart_screen.dart';
import 'package:buysystem/Widgets/Catalog_Products.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class catalogscreen extends StatelessWidget {
  const catalogscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Center(child: Text("Buy_system",style: TextStyle(color: Colors.black,fontWeight:FontWeight.bold,fontSize: 18),)),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CatalogProducts(),
            Center(
              child: ElevatedButton(
                  onPressed:() => Get.to(() => cartscreen()),
                  child: Text("Go to Cart")
              ),
            )
          ],
        ),
      ),
    );
  }
}


