import 'dart:convert';
import 'package:get/get.dart';
import 'package:renti_host/core/global/api_response_model.dart';
import 'package:renti_host/view/screens/rentiworks_support_condition/renti_works_screen/renti_works_model/renti_works_model.dart';
import 'package:renti_host/view/screens/rentiworks_support_condition/renti_works_screen/renti_works_repo/renti_works_repo.dart';

class RentiWorksController extends GetxController {
  RentiWorksRepo rentiWorksRepo;
  RentiWorksController({required this.rentiWorksRepo});

  bool isloading = false;
  RentiWorksModel rentiWorksModel = RentiWorksModel();
  Future<RentiWorksModel> rentiWorks() async {
    isloading = true;
    update();

    ApiResponseModel responseModel = await rentiWorksRepo.howRentiWork();
    // Define the variable here

    if (responseModel.statusCode == 200) {
      rentiWorksModel = RentiWorksModel.fromJson(jsonDecode(responseModel.responseJson));
      isloading = false;
      update();
    } else {
      isloading = false;
      update();
      //Utils.snackBar("Error",responseModel.message);
      return RentiWorksModel();
    }
    isloading = false;
    update();

    return rentiWorksModel; // Return the variable here
  }
}
