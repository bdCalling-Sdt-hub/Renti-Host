import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AddCarController extends GetxController {

  final carModelName = TextEditingController().obs;
  final year = TextEditingController().obs;
  final carLicenseNumber = TextEditingController().obs;
  final carDescription = TextEditingController().obs;
  final hourlyRate = TextEditingController().obs;
  final insuranceStartDate = TextEditingController().obs;
  final insuranceEndDate = TextEditingController().obs;

  final kyc = TextEditingController().obs;
  final image = TextEditingController().obs;

  final carColor = TextEditingController().obs;
  final carDoors = TextEditingController().obs;
  final carSeats = TextEditingController().obs;
  final totalRun = TextEditingController().obs;
  final gearType = TextEditingController().obs;
  final specialCharacteristics = TextEditingController().obs;
  final registrationDate = TextEditingController().obs;


}