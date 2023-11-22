import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:renti_host/core/global/api_response_model.dart';
import 'package:renti_host/view/screens/income/income/income_repo/income_repo.dart';
import 'package:renti_host/view/screens/income/income/income_response_model/income_response_model.dart';

class IncomeController extends GetxController {
  IncomeRepo incomeRepo;
  IncomeController({required this.incomeRepo});
  IncomeResponseModel incomeResponseModel = IncomeResponseModel();
  String income = "";
  bool isLoading = false;
  List<WeeklyIncomeList> weeklyIncomeList = [];


  Future<IncomeResponseModel> totalIncome() async {

    isLoading = true;
    update();

    ApiResponseModel responseModel = await incomeRepo.totalIncome();
    // Define the variable here

    if (responseModel.statusCode == 200) {
      incomeResponseModel = IncomeResponseModel.fromJson(jsonDecode(responseModel.responseJson));
      income = incomeResponseModel.totalIncome ?? "";
      weeklyIncomeList = [];
      incomeResponseModel.weeklyIncomeList?.forEach((element) {
        if(element.carId != null && element.rentId != null && element.paymentData != null){
          weeklyIncomeList.add(element);
        }
      });
      isLoading = false;
      update();

    } else {
      isLoading = false;
      update();
      //Utils.toastMessage(responseModel.message);
      // You should handle the case where there's an error. It's also recommended to return an appropriate response in this case.
      return IncomeResponseModel(); // Return a default value or handle the error accordingly.
    }
    isLoading = false;
    update();
    return incomeResponseModel; // Return the variable here
  }
}