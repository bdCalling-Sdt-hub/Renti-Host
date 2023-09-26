import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:renti_host/core/global/api_response_model.dart';
import 'package:renti_host/utils/app_utils.dart';
import 'package:renti_host/view/screens/user_list/user_list_repo/user_list_repo.dart';
import 'package:renti_host/view/screens/user_list/user_list_response_model/user_list_response_model.dart';

class UserListController extends GetxController {
  UserListRepo userListRepo;
  UserListController({required this.userListRepo});

  Future<UserListResponseModel> userList() async {
    ApiResponseModel responseModel = await userListRepo.userList();
    UserListResponseModel userListResponseModel; // Define the variable here

    if (responseModel.statusCode == 200) {
      userListResponseModel = UserListResponseModel.fromJson(jsonDecode(responseModel.responseJson));
      if (kDebugMode) {
        print("$userListResponseModel");
      }
    } else {
      Utils.toastMessage(responseModel.message);
      // You should handle the case where there's an error. It's also recommended to return an appropriate response in this case.
      return UserListResponseModel(); // Return a default value or handle the error accordingly.
    }
    return userListResponseModel; // Return the variable here
  }
}