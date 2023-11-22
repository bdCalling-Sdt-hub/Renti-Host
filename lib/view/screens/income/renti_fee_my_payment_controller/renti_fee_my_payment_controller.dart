import 'dart:convert';
import 'package:get/get.dart';
import 'package:renti_host/core/global/api_response_model.dart';
import 'package:renti_host/view/screens/income/renti_fee_my_payment_model/renti_fee_my_payment_model.dart';
import 'package:renti_host/view/screens/income/renti_fee_my_payment_repo/renti_fee_my_payment_repo.dart';

class RentiFeeMyControllerController extends GetxController {
  RentiFeeMyPaymentRepo rentiFeeMyPaymentRepo;
  RentiFeeMyControllerController({required this.rentiFeeMyPaymentRepo});

  RentiFeeMyPaymentModel rentiFeeMyPaymentModel = RentiFeeMyPaymentModel();
  bool isLoading = false;

  List<UserPaymentList> payment = [];

  Future<RentiFeeMyPaymentModel> feeOrPayment() async {

    isLoading = true;
    update();

    ApiResponseModel responseModel = await rentiFeeMyPaymentRepo.feeOrPayment();
    // Define the variable here

    if (responseModel.statusCode == 200) {
      rentiFeeMyPaymentModel = RentiFeeMyPaymentModel.fromJson(jsonDecode(responseModel.responseJson));
      payment = [];
      rentiFeeMyPaymentModel.userPaymentList?.forEach((element) {
        if(element.income?.carId != null && element.income?.rentId != null && element.income?.paymentData !=null){
          payment.add(element);
        }
      });
      isLoading = false;
      update();
    } else {
      isLoading = false;
      update();
      //Utils.toastMessage(responseModel.message);
      // You should handle the case where there's an error. It's also recommended to return an appropriate response in this case.
      return RentiFeeMyPaymentModel();// Return a default value or handle the error accordingly.
    }
    isLoading = false;
    update();
    return rentiFeeMyPaymentModel; // Return the variable here
  }
}