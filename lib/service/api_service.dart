import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:renti_host/core/global/api_authorization_response_model.dart';
import 'package:renti_host/core/global/api_response_method.dart';
import 'package:renti_host/core/global/api_response_model.dart';
import 'package:renti_host/core/helper/shear_preference_helper.dart';
import 'package:renti_host/core/route/app_route.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class ApiService {
  SharedPreferences sharedPreferences;
  ApiService({required this.sharedPreferences});

  Future<ApiResponseModel> request(
      String uri, String method, Map<String, dynamic>? params,
      {bool passHeader = false}) async {
    Uri url = Uri.parse(uri);
    http.Response response;

    try {
      if (method == ApiResponseMethod.postMethod) {
        if (passHeader) {
          initToken();
          var body= jsonEncode(params);

          response = await http.post(url, body: body, headers: {
            "Content-Type": "application/json",
            "Authorization": "$tokenType $token",
          });
        } else {
          response = await http.post(url, body: params);
        }
      }

      else if (method == ApiResponseMethod.deleteMethod) {
        if (passHeader) {
          response = await http.delete(url, headers: {
            "Content-Type": "application/json",
            "Authorization": "$tokenType $token"
          });
        } else {
          response = await http.delete(url);
        }
      }

      else if (method == ApiResponseMethod.updateMethod) {
        response = await http.patch(url);
      }

      else if (method == ApiResponseMethod.putMethod) {
        response = await http.put(url, body: jsonEncode(params), headers: {
          "Content-Type": "application/json",
          "Authorization": "$tokenType $token",
        });
      }

      else if (method == ApiResponseMethod.patchMethod) {
        if (passHeader) {
          initToken();
          response = await http.patch(url, body: jsonEncode(params), headers: {
            "Content-Type": "application/json",
            "Authorization": "$tokenType $token",
          });
        } else {
          response = await http.get(url);
        }
      }

      else {
        if (passHeader) {
          initToken();
          response = await http.get(url, headers: {
            "Content-Type": "application/json",
            "Authorization": "$tokenType $token",
          });
        } else {
          response = await http.get(url);
        }
      }

      if (kDebugMode) {
        print(url.toString());
      }
      if (kDebugMode) {
        print(response.body);
      }

      if (response.statusCode == 200) {
        try {
          ApiAuthorizationResponseModel authorizationResponseModel =
          ApiAuthorizationResponseModel.fromJson(jsonDecode(response.body));
          if (authorizationResponseModel.message == 'Unauthenticated') {
            sharedPreferences.setBool(SharedPreferenceHelper.rememberMeKey, false);
            sharedPreferences.remove(SharedPreferenceHelper.userIdKey);
            sharedPreferences.remove(SharedPreferenceHelper.accessTokenType);
            sharedPreferences.remove(SharedPreferenceHelper.userEmailKey);
            sharedPreferences.remove(SharedPreferenceHelper.userPhoneNumberKey);
            sharedPreferences.remove(SharedPreferenceHelper.userNameKey);
            sharedPreferences.remove(SharedPreferenceHelper.accessTokenKey);
            Get.offAllNamed(AppRoute.signInScreen);
          }
        } catch (e) {
          e.toString();
        }
        return ApiResponseModel(200, "Successful".tr, response.body);
      }

      else if (response.statusCode == 401) {
        sharedPreferences.setBool(SharedPreferenceHelper.rememberMeKey, false);
        sharedPreferences.remove(SharedPreferenceHelper.userIdKey);
        sharedPreferences.remove(SharedPreferenceHelper.accessTokenType);
        sharedPreferences.remove(SharedPreferenceHelper.userEmailKey);
        sharedPreferences.remove(SharedPreferenceHelper.userPhoneNumberKey);
        sharedPreferences.remove(SharedPreferenceHelper.userNameKey);
        sharedPreferences.remove(SharedPreferenceHelper.accessTokenKey);
        Get.offAllNamed(AppRoute.signInScreen);
        return ApiResponseModel(401, "Unauthorized".tr, response.body);
      } else if (response.statusCode == 201) {
        return ApiResponseModel(201, "Successful".tr, response.body);
      } else if (response.statusCode == 500) {
        return ApiResponseModel(500, "Internal Server Error".tr, response.body);
      } else {
        return ApiResponseModel(499, "Something went wrong".tr, response.body);
      }
    } on SocketException {
      return ApiResponseModel(503, "No internet connection".tr, '');
    } on FormatException {
      return ApiResponseModel(400, "Bad Response Request".tr, '');
    } catch (e) {
      return ApiResponseModel(499, "Client Closed Request".tr, '');
    }
  }

  String token = '';
  String tokenType = '';

  initToken() {
    if (sharedPreferences.containsKey(SharedPreferenceHelper.accessTokenKey)) {
      String? t =
      sharedPreferences.getString(SharedPreferenceHelper.accessTokenKey);
      String? tType =
      sharedPreferences.getString(SharedPreferenceHelper.accessTokenType);
      token = t ?? '';
      tokenType = tType ?? 'Bearer';
    } else {
      token = '';
      tokenType = 'Bearer';
    }
  }
}
