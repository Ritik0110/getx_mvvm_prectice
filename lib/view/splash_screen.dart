import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/utils/utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello".tr),
      ),
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(onPressed: (){
        Utils.toastMessage("${"Hello".tr}\n${"How are you?".tr}");
      }),
    );
  }
}
