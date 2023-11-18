import 'dart:convert';
import 'package:get/get.dart';
import 'package:renti_host/core/global/api_response_model.dart';
import 'package:renti_host/view/screens/user_list/user_list_repo/user_list_repo.dart';
import 'package:renti_host/view/screens/user_list/user_list_response_model/user_list_response_model.dart';

class UserListController extends GetxController {
  UserListRepo userListRepo;
  UserListController({required this.userListRepo});

  bool isLoading = false;
  List<UserList> userList = [];

  UserListResponseModel userListResponseModel = UserListResponseModel();

  Future<void> userListData() async {
    isLoading = true;
    update();

    ApiResponseModel responseModel = await userListRepo.userList();

    if (responseModel.statusCode == 200) {
      userListResponseModel = UserListResponseModel.fromJson(jsonDecode(responseModel.responseJson));
      userList = [];
      userListResponseModel.userList?.forEach((element) {
        if(element.payment == "Completed" &&
            element.requestStatus == "Completed" &&
            element.userId != null &&
            element.userId?.isBanned != "true"){
          userList.add(element);
        }
      });
    }
    isLoading = false;
    update();// Return the variable here
  }
}