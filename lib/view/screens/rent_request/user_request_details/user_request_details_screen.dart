import 'package:flutter/material.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_static_strings.dart';
import 'package:renti_host/view/screens/rent_request/user_request_details/inner_widgets/car-details_body.dart';
import 'package:renti_host/view/screens/rent_request/user_request_details/inner_widgets/car_details.dart';
import 'package:renti_host/view/screens/rent_request/user_request_details/inner_widgets/user_details_top_section.dart';
import 'package:renti_host/view/widgets/appbar/custom_appbar.dart';
import 'package:renti_host/view/widgets/back/custom_back.dart';
import '../../deal_information/deal_information_start_trip/start_trip_screen.dart';

class UserRequestDetailsScreen extends StatefulWidget {
  const UserRequestDetailsScreen({super.key});

  @override
  State<UserRequestDetailsScreen> createState() => _UserRequestDetailsScreenState();
}

class _UserRequestDetailsScreenState extends State<UserRequestDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        backgroundColor: AppColors.whiteLight,
        appBar: const CustomAppBar(appBarContent: CustomBack(text: AppStaticStrings.userDetails),),
        body: LayoutBuilder(builder: (context,constraint){
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsetsDirectional.symmetric(vertical: 24, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const UserDetailsTopSection(),
                  const CarDetailsBody(),
                  const CarDetails(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: (){
                          },
                          child: Container(
                            height: 48,
                            width: constraint.maxWidth,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: const Color(0xffFBE9EC),
                                borderRadius: BorderRadius.circular(8)
                            ),
                            child: const Text("Cancel", textAlign: TextAlign.center, style: TextStyle(color: Color(0xffD7263D),fontSize: 18,fontWeight:FontWeight.w500)),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8,),
                      Expanded(
                        child: InkWell(
                          onTap: (){

                            Navigator.push(context, MaterialPageRoute(builder: (_)=>StartTripScreen()));
                          },
                          child: Container(
                            //alignment: Alignment.bottomRight,
                              height: 48,
                              width: constraint.maxWidth,
                              alignment: Alignment.center,

                              decoration: BoxDecoration(
                                  color: const Color(0xff000B90),
                                borderRadius: BorderRadius.circular(8)
                              ),
                              child: const Text("Approve", textAlign: TextAlign.center, style: TextStyle(color: Colors.white,fontSize: 18,fontWeight:FontWeight.w500))
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
