import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

class permission_location extends StatelessWidget {
  const permission_location({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){
      checkpermission(Permission.location,context);
    },
        child:Text("purches",style: TextStyle(fontSize: 20,color: Colors.black),));
  }

  Future<void> checkpermission(Permission permission ,BuildContext context) async {
    final status = await permission.request();
    if (status.isGranted){
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("permission is granted")));
    }else{
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("permission is not granted")));


    }

    }
  }


