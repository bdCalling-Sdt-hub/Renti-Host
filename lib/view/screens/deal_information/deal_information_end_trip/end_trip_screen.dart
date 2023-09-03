import 'package:flutter/material.dart';
import 'package:renti_host/view/screens/deal_information/deal_information_end_trip/inner_widgets/rental_info.dart';
import 'package:renti_host/view/screens/deal_information/deal_information_end_trip/inner_widgets/top_upload_section.dart';

import '../ deal_information_review/review_details_screen.dart';
import '../deal_information_start_trip/start_trip_screen.dart';
class EndTripScreen extends StatefulWidget {
  const EndTripScreen({super.key});
  @override
  State<EndTripScreen> createState() => _EndTripState();
}
class _EndTripState extends State<EndTripScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffffffff),
        appBar: AppBar(titleSpacing: -8,
            centerTitle: false,
            elevation: 0,
            title: const Text('Car Deal Information',
                style: TextStyle(
                    color: Color(0xff2E2C2C),
                    fontSize: 18,
                    fontWeight: FontWeight.w600)),
            backgroundColor: const Color(0xffffffff),
            leading: IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=>StartTripScreen()));
              },
              icon: const Icon(
                Icons.arrow_back_ios,
              ),
              color: Colors.black,
            )),
        body: LayoutBuilder(builder: (context, constraint) {
          return SingleChildScrollView(
            child: Padding(
              padding:
              const EdgeInsetsDirectional.symmetric(vertical: 20, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   TopUploadSection(),
                  const SizedBox(
                    height: 16,
                  ),
                    RentalInfoEnd(),
                  const SizedBox(height: 24,),
                  const Text("User Information",
                      style: TextStyle(
                          color: Color(0xff2E2C2C),
                          fontSize: 16,
                          fontWeight: FontWeight.w500)),
                  const SizedBox(height: 16,),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Name:",style: TextStyle(color: Color(0xff999999),fontSize: 16,fontWeight:FontWeight.w400)),
                      SizedBox(),
                      Text("Md Ratul",style: TextStyle(color: Color(0xff2E2C2C),fontSize: 16,fontWeight:FontWeight.w500)),
                    ],
                  ),
                  const SizedBox(height: 8,),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("INE:",style: TextStyle(color: Color(0xff999999),fontSize: 16,fontWeight:FontWeight.w400)),
                      SizedBox(),
                      Text("12345678964",style: TextStyle(color: Color(0xff2E2C2C),fontSize: 16,fontWeight:FontWeight.w500)),
                    ],
                  ),
                  const SizedBox(height: 8,),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Driving license no:",style: TextStyle(color: Color(0xff999999),fontSize: 16,fontWeight:FontWeight.w400)),
                      SizedBox(),
                      Text("61-10-2222",style: TextStyle(color: Color(0xff2E2C2C),fontSize: 16,fontWeight:FontWeight.w500)),
                    ],
                  ),
                  const SizedBox(height: 8,),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Pickup location:",style: TextStyle(color: Color(0xff999999),fontSize: 16,fontWeight:FontWeight.w400)),
                      SizedBox(),
                      Text("Mexico",style: TextStyle(color: Color(0xff2E2C2C),fontSize: 16,fontWeight:FontWeight.w500)),
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
