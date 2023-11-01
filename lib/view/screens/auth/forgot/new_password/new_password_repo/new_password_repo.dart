import 'package:renti_host/core/global/api_response_method.dart';
import 'package:renti_host/core/global/api_response_model.dart';
import 'package:renti_host/core/global/api_url_container.dart';
import 'package:renti_host/core/helper/shear_preference_helper.dart';
import 'package:renti_host/service/api_service.dart';

class ResetPasswordRepo{
  ApiService apiService;
  ResetPasswordRepo({required this.apiService});

  Future<ApiResponseModel> resetPasswordResult({required String password}) async{

    String uri = "${ApiUrlContainer.baseUrl}${ApiUrlContainer.resetPassEndPoint}";
    String requestMethod = ApiResponseMethod.postMethod;
    final String? email = apiService.sharedPreferences.getString(SharedPreferenceHelper.userEmailKey);
    Map<String, dynamic> params = {
      "email" : email??"",
      "password" : password
    };

    ApiResponseModel responseModel = await apiService.request(uri, requestMethod, params, passHeader: false);
    return responseModel;
  }
}