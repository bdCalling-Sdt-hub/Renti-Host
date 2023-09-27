import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:renti_host/core/global/api_response_model.dart';
import 'package:renti_host/utils/app_utils.dart';
import 'package:renti_host/view/screens/user_list/user_list_repo/single_user_repo.dart';
import 'package:renti_host/view/screens/user_list/user_list_response_model/single_user_response_model.dart';

class SingleUserController extends GetxController {
  SingleUserRepo singleUserRepo;
  SingleUserController({required this.singleUserRepo});

  Future<SingleUserResponseModel> singleUser() async {
    ApiResponseModel responseModel = await singleUserRepo.singleUser();
    SingleUserResponseModel singleUserResponseModel; // Define the variable here

    if (responseModel.statusCode == 200) {
      singleUserResponseModel = SingleUserResponseModel.fromJson(jsonDecode(responseModel.responseJson));
      if (kDebugMode) {
        print("$singleUserResponseModel");
      }
    } else {
      Utils.toastMessage(responseModel.message);
      // You should handle the case where there's an error. It's also recommended to return an appropriate response in this case.
      return SingleUserResponseModel(); // Return a default value or handle the error accordingly.
    }
    return singleUserResponseModel; // Return the variable here
  }
}