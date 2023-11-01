import 'package:renti_host/core/global/api_response_method.dart';
import 'package:renti_host/core/global/api_response_model.dart';
import 'package:renti_host/core/global/api_url_container.dart';
import 'package:renti_host/core/helper/shear_preference_helper.dart';
import 'package:renti_host/service/api_service.dart';

class OtpRepo{
  ApiService apiService;
  OtpRepo({required this.apiService});

  Future<ApiResponseModel> otpVerifyResult({required String otp}) async{

    String uri = "${ApiUrlContainer.baseUrl}${ApiUrlContainer.oneTimeCodeEndPoint}";
    String requestMethod = ApiResponseMethod.postMethod;
    final String? email = apiService.sharedPreferences.getString( SharedPreferenceHelper.userEmailKey);
    Map<String, String> params = {
      "email" : email??"",
      "oneTimeCode" : otp
    };

    ApiResponseModel responseModel = await apiService.request(uri, requestMethod, params, passHeader: false);
    return responseModel;
  }

  Future<ApiResponseModel> resendOtpVerifyResult() async{
    String uri = "${ApiUrlContainer.baseUrl}${ApiUrlContainer.forgotPassEndPoint}";
    String requestMethod = ApiResponseMethod.postMethod;
    final String? email = apiService.sharedPreferences.getString( SharedPreferenceHelper.userEmailKey);
    Map<String, String> params = {
      "email" : email??""
    };

    ApiResponseModel responseModel = await apiService.request(uri, requestMethod, params, passHeader: false);
    return responseModel;
  }
}