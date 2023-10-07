import 'package:buysystem/Controller/Cart_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
class CartTotal extends StatelessWidget {
  final CartController controller = Get.find();
   CartTotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() =>
       Container(
        padding: EdgeInsets.symmetric(horizontal:10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                Text('${controller.total}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Money in cart",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                Text('${controller.availableMoney}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("remain in cart",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                Text('${controller.remainInyourcart}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
