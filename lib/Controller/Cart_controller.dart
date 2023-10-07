import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:buysystem/model/product_models.dart';

class CartController extends GetxController{
  var availableMoney = 100.0.obs;
  var _products = {}.obs;

  void addProduct (Product product) {
    if (_products.containsKey(product)) {
      _products[product] += 1;
    }else{
      _products[product] = 1;
    }
    Get.snackbar("Product Addedd", "you have add the ${product.name} to your cart",
      duration: Duration(seconds: 2),
      snackPosition: SnackPosition.BOTTOM
    );
  }
  void removeProduct(Product product){
    if (_products.containsKey(product) && _products[product] == 1){
      _products.removeWhere((key, value) => Key == product);
    } else{
      _products[product] -= 1;
    }
  }

  get products => _products;

  get productSubtotal => _products.entries
      .map((product) => product.key.price * product.value )
      .toList();

  get total => _products.entries
      .map((product) => product.key.price * product.value )
      .toList()
      .reduce((value, element) => value + element)
      ;

  get remainInyourcart => availableMoney.value - total;





  }