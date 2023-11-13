import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:renti_host/core/route/app_route.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';

class NoInternetController extends GetxController {
  final Connectivity _connectivity = Connectivity();

  void onConnectivityChange(ConnectivityResult result) {
    if (result == ConnectivityResult.none) {
      Get.rawSnackbar(
          messageText: CustomText(text:
          "PLEASE CONNECT TO INTERNET".tr,fontSize: 16,fontWeight: FontWeight.w500),
          isDismissible: false,
          backgroundColor: AppColors.blackNormal,
          icon: const Icon(
            Icons.wifi_off_outlined,
            color: Colors.white,
            size: 35,
          ),
          snackStyle: SnackStyle.GROUNDED,
          duration: const Duration(days: 1));

      Get.offAllNamed(AppRoute.noInternet);


    } else {
      if (Get.isSnackbarOpen) {

        Get.closeAllSnackbars();
        Get.offAllNamed(AppRoute.navigation);
      }
    }
  }

  @override
  void onInit() {
    _connectivity.onConnectivityChanged.listen((event) {
      onConnectivityChange(event);
    });
    super.onInit();
  }
}