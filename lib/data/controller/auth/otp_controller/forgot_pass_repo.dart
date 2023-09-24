import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:renti_host/core/route/app_route.dart';
import 'package:renti_host/utils/app_utils.dart';

class ForgetPasswordController extends GetxController {

  final String apiUrl = 'http://103.161.9.106:3001/api/user/forget-password';
  final emailController = TextEditingController().obs;

  Future<void> resetPassword(String email) async {
    try {
      final response = await http.post(
        Uri.parse(apiUrl),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({'email': emailController.value.text}),
      );

      if (response.statusCode == 201) {
        // You can handle the response here if needed
        if (kDebugMode) {
          print('${response.statusCode}');
        }
        Get.toNamed(AppRoute.forgotPasswordOTPScreen);
        Utils.toastMessage("Sent One Time OTP in you email");

      } else {
        // Password reset request failed
        // You can handle errors here, e.g. show a snack bar or dialog
        if (kDebugMode) {
          print('Password reset failed');
          print("${response.statusCode}");
        }
        Utils.toastMessage("Enter Valid Email");
      }
    } catch (error) {
      // Handle any network or other errors
      if (kDebugMode) {
        print('Error: $error');
      }
      Utils.toastMessage("Error : $error");
    }
  }
}
