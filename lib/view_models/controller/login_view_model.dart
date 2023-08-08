
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginViewModel extends GetxController{

  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  final emailNode = FocusNode().obs;
  final passwordNode = FocusNode().obs;
}