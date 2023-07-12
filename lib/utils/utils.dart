import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/res/Colors/app_colors.dart';

class Utils {
  static void fieldFocusChange(
      BuildContext context, FocusNode current, FocusNode next) {
    current.unfocus();
    FocusScope.of(context).requestFocus(next);
  }

  static void toastMessage(String message) {
    Fluttertoast.showToast(
      msg: message.tr,
      backgroundColor: AppColors.toastback,
      gravity: ToastGravity.TOP,
      fontSize: 18,
    );
  }
}
