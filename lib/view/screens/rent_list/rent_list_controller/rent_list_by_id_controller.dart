import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:renti_host/core/global/api_response_model.dart';
import 'package:renti_host/utils/app_utils.dart';
import 'package:renti_host/view/screens/rent_list/rent_list_model/rent_list_by_id_model.dart';
import 'package:renti_host/view/screens/rent_list/rent_list_repo/rent_list_by_id_repo.dart';

class RentListByIDController extends GetxController {
  RentListByIDRepo rentListByIDRepo;
  RentListByIDController({required this.rentListByIDRepo});

  Future<RentListByIdModel> rentListByID() async {
    ApiResponseModel responseModel = await rentListByIDRepo.rentListByID();
    RentListByIdModel rentListByIdModel; // Define the variable here

    if (responseModel.statusCode == 200) {
      rentListByIdModel = RentListByIdModel.fromJson(jsonDecode(responseModel.responseJson));
      if (kDebugMode) {
        print("$rentListByIdModel");
      }
    } else {
      Utils.toastMessage(responseModel.message);
      // You should handle the case where there's an error. It's also recommended to return an appropriate response in this case.
      return RentListByIdModel(); // Return a default value or handle the error accordingly.
    }
    return rentListByIdModel; // Return the variable here
  }
}