import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:renti_host/core/global/api_url_container.dart';
import 'package:renti_host/core/helper/shear_preference_helper.dart';
import 'package:renti_host/view/screens/car_list/car_list_response_model/car_list_response_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CarListController extends GetxController {
  var carList = <CarListResponseModel>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    fetchCarList();
  }

  void fetchCarList() async {
    isLoading.value = true;
    try {
      // Fetch the Bearer token from SharedPreferences
      final token = await SharedPreferences.getInstance();
      final accessToken = token.getString(SharedPreferenceHelper.accessTokenKey);

      if (kDebugMode) {
        print("$accessToken");
      }

      final apiService = ApiService();
      final response = await apiService.getCarList("$accessToken");

      final cars = (response['cars'] as List)
          .map((carJson) => CarListResponseModel.fromJson(carJson))
          .toList();

      carList.value = cars;
      isLoading.value = false;
    } catch (error) {
      if (kDebugMode) {
        print('Error: $error');
      }
      isLoading.value = false;
    }
  }
}

class ApiService {

  Future<Map<String, dynamic>> getCarList(String token) async {
    final response = await http.get(
      Uri.parse("${ApiUrlContainer.baseUrl}${ApiUrlContainer.carListEndPoint}"),
      headers: {
        'Authorization': token,
      },
    );

    if (kDebugMode) {
      print(SharedPreferenceHelper.accessTokenKey);
    }

    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      if (kDebugMode) {
        print("$data");
      }
      return data;
    } else {
      throw Exception('Failed to load car list');
    }
  }
}