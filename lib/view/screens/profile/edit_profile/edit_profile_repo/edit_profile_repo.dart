import 'package:intl_phone_field/phone_number.dart';
import 'package:renti_host/core/global/api_response_method.dart';
import 'package:renti_host/core/global/api_response_model.dart';
import 'package:renti_host/core/global/api_url_container.dart';
import 'package:renti_host/service/api_service.dart';

class EditProfileRepo {
  ApiService apiService;
  EditProfileRepo({required this.apiService});

  Future<ApiResponseModel> editProfile(
      {required String email,
      required String image,
      required String password,
      required String fullName,
      required String phoneNumber,
      required String id,
      required String address}) async {
    String uri =
        "${ApiUrlContainer.baseUrl}${ApiUrlContainer.editProfile + id}";
    String requestMethod = ApiResponseMethod.postMethod;
    Map<String, String> params = {
      "email": email,
      "password": password,
      "_id": id,
      "phoneNumber": phoneNumber,
      "address": address,
      "fullName": fullName,
    };

    ApiResponseModel responseModel =
        await apiService.request(uri, requestMethod, params, passHeader: false);

    return responseModel;
  }
}
