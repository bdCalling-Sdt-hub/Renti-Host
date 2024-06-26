import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/view/widgets/popups/alert_popup.dart';

class Utils {
  static void fieldFocusChange(
      BuildContext context, FocusNode current, FocusNode nextFocus) {
    current.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  static toastMessage(String message) {
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: AppColors.blueNormal,
      textColor: AppColors.whiteLight,
      gravity: ToastGravity.BOTTOM,
      toastLength: Toast.LENGTH_LONG,
    );
  }

  static toastMessageCenter(String message) {
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: AppColors.blueNormal,
      gravity: ToastGravity.CENTER,
      toastLength: Toast.LENGTH_LONG,
      textColor: AppColors.whiteLight,
    );
  }

  static snackBar(String title, String message) {
    Get.snackbar(title, message,snackPosition: SnackPosition.BOTTOM,backgroundColor: AppColors.blueNormal,colorText: AppColors.whiteLight, duration: const Duration(seconds: 3));
  }

  static popUp (String title,VoidCallback onTap){
    Get.dialog(AlertPopUp(title: title, onTap: onTap),);
  }
}
