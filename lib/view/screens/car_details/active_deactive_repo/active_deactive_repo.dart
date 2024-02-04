import 'dart:convert';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/instance_manager.dart';
import 'package:renti_host/core/global/api_url_container.dart';
import 'package:renti_host/service/api_service.dart';
import 'package:renti_host/utils/app_utils.dart';
import 'package:renti_host/view/screens/%20home/home_controller/home_carlist_controller.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

import '../../../../core/helper/shear_preference_helper.dart';

class InactiveController extends GetxController {
  InactiveController({required this.apiService});

  ApiService apiService;
  bool isSubmit = false;

  Future<void> inActiveResidence({required String id, required Status type}) async {
    isSubmit = true;
    update();

    final prefs = await SharedPreferences.getInstance();

    String? token = prefs.getString(SharedPreferenceHelper.accessTokenKey);

    final Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
    };

    final Map<String, dynamic> body = {
      'isCarActive': type == Status.Active ? 'Active' : 'Deactive',
    };
  update();
    final String jsonBody = jsonEncode(body);

    try {
      final Uri url = Uri.parse("${ApiUrlContainer.baseUrl}${ApiUrlContainer.activecarEndPoint}/$id");
      final response = await http.post(
        url,
        headers: headers,
        body: jsonBody,
      );
      print("==============================${url}");
      print("==============================${jsonBody}");
      print("==============================${headers}");

      final  responseData = jsonDecode(response.body);
      final String successMessage = responseData['message'] ?? 'Error';

      if (response.statusCode == 200) {
        HomeCarListController homeCarListController =  Get.find<HomeCarListController>();
        homeCarListController.homeCarList();
        Get.back();
        Utils.toastMessage(successMessage);
        update();
      } else {
        Utils.toastMessage('Something went wrong');
        print(response.statusCode);
      }
    } catch (error) {
      Utils.toastMessage('Error: $error');
      print(error);
    }
  }
}

enum Status {
  Active,
  Deactive,
}
