import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:renti_host/service/api_service.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_static_strings.dart';
import 'package:renti_host/view/screens/user_list/inner_widgets/user_details.dart';
import 'package:renti_host/view/screens/user_list/user_list_controller/user_list_controller.dart';
import 'package:renti_host/view/screens/user_list/user_list_repo/single_user_repo.dart';
import 'package:renti_host/view/screens/user_list/user_list_repo/user_list_repo.dart';
import 'package:renti_host/view/screens/user_list/user_list_response_model/user_list_response_model.dart';
import 'package:renti_host/view/widgets/appbar/custom_appbar.dart';
import 'package:renti_host/view/widgets/back/custom_back.dart';

class UserListScreen extends StatefulWidget {
  const UserListScreen({super.key});

  @override
  State<UserListScreen> createState() => _UserListScreenState();
}

class _UserListScreenState extends State<UserListScreen> {

  @override
  void initState() {
    Get.put(ApiService(sharedPreferences: Get.find()));
    Get.put(UserListRepo(apiService: Get.find()));
    Get.put(SingleUserRepo(apiService: Get.find()));
    var controller = Get.put(UserListController(userListRepo: Get.find()));
    //var controller1 = Get.put(SingleUserController(singleUserRepo: Get.find()));
    controller.userList();
    //controller1.singleUser();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserListController>(
      builder: (controller) {
        UserListResponseModel userListResponseModel = controller.userListResponseModel;
        if (controller.isLoading == true) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return SafeArea(
          top: true,
          child: Scaffold(
            backgroundColor: AppColors.whiteLight,
            appBar: const CustomAppBar(
              appBarContent: CustomBack(
                  text: AppStaticStrings.userList,
                  color: AppColors.blackNormal),
            ),
            body: LayoutBuilder(
              builder: (context, constraint) {
                return  SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
                  child: UserDetails(userListResponseModel: userListResponseModel),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
