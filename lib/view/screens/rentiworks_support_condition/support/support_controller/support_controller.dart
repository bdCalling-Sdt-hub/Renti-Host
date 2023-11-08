import 'dart:convert';
import 'package:get/get.dart';
import 'package:renti_host/core/global/api_response_model.dart';
import 'package:renti_host/utils/app_utils.dart';
import 'package:renti_host/view/screens/rentiworks_support_condition/support/support_model/support_model.dart';
import 'package:renti_host/view/screens/rentiworks_support_condition/support/support_repo/support_repo.dart';

class SupportController extends GetxController {
  SupportRepo supportRepo;
  SupportController({required this.supportRepo});

  bool isloading = false;
  SupportModel supportModel = SupportModel();

  Future<void> support() async {
    isloading = true;
    update();
    ApiResponseModel apiResponseModel = await supportRepo.support();

    if (apiResponseModel.statusCode == 200) {
      supportModel = SupportModel.fromJson(jsonDecode(apiResponseModel.responseJson));
      isloading = false;
      update();
    } else {
      supportModel = SupportModel.fromJson(jsonDecode(apiResponseModel.responseJson));
      isloading = false;
      update();
     // Utils.snackBar("Error", supportModel.message.toString());
    }
    isloading = false;
    update();
  }
}
