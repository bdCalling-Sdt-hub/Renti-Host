import 'package:renti_host/core/global/api_response_method.dart';
import 'package:renti_host/core/global/api_response_model.dart';
import 'package:renti_host/core/global/api_url_container.dart';
import 'package:renti_host/service/api_service.dart';

class ForgetPasswordRepo{
  ApiService apiService;
  ForgetPasswordRepo({required this.apiService});

  Future<ApiResponseModel> forgetPasswordResult({required String email}) async{

    String uri = "${ApiUrlContainer.baseUrl}${ApiUrlContainer.forgotPassEndPoint}";
    String requestMethod = ApiResponseMethod.postMethod;
    Map<String, String> params = {
      "email" : email
    };

    ApiResponseModel responseModel = await apiService.request(uri, requestMethod, params, passHeader: false);
    return responseModel;
  }
}