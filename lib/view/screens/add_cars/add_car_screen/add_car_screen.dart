import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:get/get.dart';
import 'package:renti_host/core/route/app_route.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_utils.dart';
import 'package:renti_host/view/screens/add_cars/add_car_controller/add_car_controller.dart';
import 'package:renti_host/view/screens/add_cars/add_car_screen/inner_widgets/add_car_body_section.dart';
import 'package:renti_host/view/screens/add_cars/add_car_screen/inner_widgets/add_car_image.dart';
import 'package:renti_host/view/screens/add_cars/google_map_model/google_map_mpdel.dart';
import 'package:renti_host/view/widgets/appbar/custom_appbar.dart';
import 'package:renti_host/view/widgets/back/custom_back.dart';
import 'package:renti_host/view/widgets/button/custom_elevated_button.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';

class AddCarsScreen extends StatefulWidget {
  const AddCarsScreen({super.key});

  @override
  State<AddCarsScreen> createState() => _AddCarsScreenState();
}

class _AddCarsScreenState extends State<AddCarsScreen> {
  @override
  void initState() {
    Get.put(AddCarController());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: GetBuilder<AddCarController>(
        builder: (controller) {

          return Scaffold(
            backgroundColor: AppColors.whiteLight,
            // App Bar
            appBar: CustomAppBar(
              appBarContent: CustomBack(
                text: "Add Car".tr,
                color: AppColors.blackNormal,
              ),
            ),
            body: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AddCarImage(),

                  CustomText(text: "Car Location".tr, top: 16, bottom: 12),

                  TypeAheadField(
                    controller: controller.searchTextController,
                    suggestionsCallback: (search) async {
                       return controller.searchLocation(context,controller.searchTextController.text);
                    },
                    builder: (context, controller, focusNode) {
                      return TextFormField(
                          controller: controller,
                          focusNode: focusNode,
                          autofocus: true,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: const BorderSide(color: AppColors.whiteNormalActive, width: 1),
                                  gapPadding: 0),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: const BorderSide(color: AppColors.whiteNormalActive, width: 1),
                                  gapPadding: 0),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: const BorderSide(color: AppColors.whiteNormalActive, width: 1),
                                  gapPadding: 0),
                              hintText: 'Search Car Location'.tr
                          ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "This field can not be empty".tr;
                          }
                          return null;
                        },
                      );
                    },
                    itemBuilder: (context, city) {
                      return ListTile(
                        title: Text(city.description),
                        // subtitle: Text(city.country),
                      );
                    },
                    onSelected: (city) {
                      controller.searchTextController.text = city.description;
                    },
                  ),

                  const AddCarBodySection(),
                  const SizedBox(height: 24),
                  CustomElevatedButton(
                    onPressed: () {
                      if(controller.formKey.currentState!.validate() && controller.firstImg !=null && controller.secondImg != null && controller.thirdImg != null){
                        Get.toNamed(AppRoute.addCarsDocument);
                      }
                      else if (controller.firstImg == null || controller.secondImg == null || controller.thirdImg == null){
                        Utils.snackBar("Error".tr, "Image File Can't be Empty".tr);
                      }
                    },
                    buttonHeight: 52,
                    buttonWidth: double.infinity,
                    titleText: "Continue".tr,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
