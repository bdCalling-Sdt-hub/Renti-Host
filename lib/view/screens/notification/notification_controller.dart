import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:renti_host/service/api_service.dart';
import 'package:renti_host/view/screens/notification/model/notification_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/global/api_response_method.dart';
import '../../../core/global/api_response_model.dart';
import '../../../core/global/api_url_container.dart';
import 'package:http/http.dart' as http;

import '../../../core/helper/shear_preference_helper.dart';

class NotificationController extends GetxController{



var loading=false.obs;

RxList<AllNotification> allNotificationList=<AllNotification>[].obs;



  getNotification()async{
    try {
      loading(true);
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      String? t = prefs.getString(SharedPreferenceHelper.accessTokenKey);
      Map<String,String>headers= {
        "Content-Type": "application/json",
        "Authorization": "Bearer $t",
      };
         final response= await http.get(Uri.parse("${ApiUrlContainer.baseUrl}${ApiUrlContainer.notificationEndPoint}"),headers:headers);
         if(response.statusCode==200){
           NotificationModel notificationModel =  notificationModelFromJson(response.body);
           allNotificationList.value=notificationModel.data!.allNotification!;
          debugPrint("===== Notification length : ${allNotificationList.length}");
          debugPrint("===== Notification length : ${response.body}");
         }else{
       debugPrint("Opps, Something error ${response.statusCode}");
         }
         loading(false);
    } on Exception catch (e) {
      debugPrint("Opps, Something error");
      loading(false);
    }




  }

  // Future<ApiResponseModel> homeCarList({String search = ""}) async {
  //   String uri =
  //       "${ApiUrlContainer.baseUrl}${ApiUrlContainer.homeCarList}$search";
  //   String requestMethod = ApiResponseMethod.getMethod;
  //
  //   ApiResponseModel responseModel =
  //   await apiService.request(uri, requestMethod, null, passHeader: true);
  //
  //   return responseModel;
  // }




}