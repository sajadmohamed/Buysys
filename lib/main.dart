import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Screens/CatalogScreen.dart';

void main() {
  runApp(GetMaterialApp(home: MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: catalogscreen(),
    );
  }
}
