import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:renti_host/core/global/api_response_model.dart';
import 'package:renti_host/utils/app_utils.dart';
import 'package:renti_host/view/screens/rent_list/rent_list_model/rent_list_model.dart';
import 'package:renti_host/view/screens/rent_list/rent_list_repo/rent_list_repo.dart';

class RentListController extends GetxController {
  RentListRepo rentListRepo;
  RentListController({required this.rentListRepo});

  Future<RentListModel> rentList() async {
    ApiResponseModel responseModel = await rentListRepo.rentList();
    RentListModel rentListModel; // Define the variable here

    if (responseModel.statusCode == 200) {
      rentListModel = RentListModel.fromJson(jsonDecode(responseModel.responseJson));
      if (kDebugMode) {
        print("$rentListModel");
      }
    } else {
      Utils.toastMessage(responseModel.message);
      // You should handle the case where there's an error. It's also recommended to return an appropriate response in this case.
      return RentListModel(); // Return a default value or handle the error accordingly.
    }
    return rentListModel; // Return the variable here
  }
}