import 'dart:convert';

import 'package:get/get.dart';
import 'package:renti_host/core/global/api_response_model.dart';
import 'package:renti_host/utils/app_utils.dart';
import 'package:renti_host/view/screens/admin_info/admin_info_model/admin_info_model.dart';
import 'package:renti_host/view/screens/admin_info/admin_info_repo/admin_info_repo.dart';

class AdminInfoController extends GetxController {
  AdminInfoRepo adminInfoRepo;
  AdminInfoController({required this.adminInfoRepo});

  @override
  void onInit() {
    adminInfo();
    super.onInit();
  }


  bool isLoading = false;

  AdminInfoModel adminInfoModel = AdminInfoModel();

  Future<void> adminInfo() async {

    isLoading = true;
    update();
    ApiResponseModel responseModel = await adminInfoRepo.adminInfo();


    if (responseModel.statusCode == 200) {
      adminInfoModel = AdminInfoModel.fromJson(jsonDecode(responseModel.responseJson));

      isLoading = false;
      update();
    } else {
      Utils.toastMessage(responseModel.message);
    }
    isLoading = false;
    update();
  }
}
