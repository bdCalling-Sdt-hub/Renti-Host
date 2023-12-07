import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:renti_host/core/global/api_url_container.dart';
import 'package:renti_host/core/helper/shear_preference_helper.dart';
import 'package:renti_host/utils/app_utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ChangePasswordController extends GetxController{

  final String apiUrl = "${ApiUrlContainer.baseUrl}${ApiUrlContainer.changePassword}";
  final currentPassword = TextEditingController().obs;
  final newPassword = TextEditingController().obs;
  final reTypedPassword = TextEditingController().obs;

  bool loading = false;

  Future<void> changePass (String current, String newPass,String conPass) async{
    try {
      loading = true;
      update();
      final prefs = await SharedPreferences.getInstance();
      final userEmail = prefs.getString(SharedPreferenceHelper.userEmailKey);
      final response = await http.post(
        Uri.parse(apiUrl),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          'email': "$userEmail",
          'currentPassword': currentPassword.value.text,
          'newPassword': newPassword.value.text,
          'reTypedPassword': reTypedPassword.value.text,
        }),
      );

      if (kDebugMode) {
        print("$userEmail");
      }

      if (response.statusCode == 200) {
        clearData();
        // Password Change successful
        // You can handle the response here if needed
        if (kDebugMode) {
          print('Password changed successfully');
        }
        loading = false;
        update();
        Get.back();
        Utils.snackBar("Successful".tr,"Password changed successfully".tr);
      }else if(response.statusCode == 401) {

        loading = false;
        update();
        Utils.snackBar("Error".tr,"Current password does not match".tr);
      }else {
        // Password Change failed
        // You can handle errors here, e.g., show a snack bar or dialog
        if (kDebugMode) {
          print('Password changed failed');
          print(response.statusCode);
        }
        loading = false;
        update();
        Utils.snackBar("Error".tr,"New password and Confirm password does not match".tr);
      }
    } catch (error) {
      // Handle any network or other errors
      if (kDebugMode) {
        print('Error: $error');
      }
    }
  }
  void clearData() {
    loading = false;
    update();
    currentPassword.value.text = '';
    newPassword.value.text = '';
    reTypedPassword.value.text = '';
  }
}