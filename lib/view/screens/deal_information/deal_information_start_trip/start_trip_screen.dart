import 'package:flutter/material.dart';
import 'package:renti_host/view/screens/deal_information/deal_information_end_trip/end_trip_screen.dart';
import 'package:renti_host/view/screens/deal_information/deal_information_end_trip/inner_widgets/rental_info.dart';
import 'package:renti_host/view/screens/deal_information/deal_information_end_trip/inner_widgets/top_upload_section.dart';
import 'package:renti_host/view/screens/deal_information/deal_information_start_trip/inner_widgets/rental_info.dart';
import 'package:renti_host/view/widgets/button/bottom_button.dart';


import '../../rent_request/user_details/user_details_screen.dart';

class StartTripScreen extends StatefulWidget {
  const StartTripScreen({super.key});

  @override
  State<StartTripScreen> createState() => _StartTripScreenState();
}

class _StartTripScreenState extends State<StartTripScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Scaffold(
          backgroundColor: const Color(0xffffffff),
        appBar: AppBar(
             titleSpacing: -8,
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
                Navigator.push(context, MaterialPageRoute(builder: (_)=>UserDetailsScreen()));
              },
              icon: const Icon(
                Icons.arrow_back_ios,
              ),
              color: Colors.black,
            )),
        body: LayoutBuilder(builder: (context, constraint) {
          return  const SingleChildScrollView(
            padding: EdgeInsetsDirectional.symmetric(vertical: 20, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 // top Section with upload button
                 TopUploadSection(),
                SizedBox(height: 16),
                RentalInfostart(),
                SizedBox(height: 24,),
                Text("User Information",
                    style: TextStyle(
                        color: Color(0xff2E2C2C),
                        fontSize: 16,
                        fontWeight: FontWeight.w500)),
                SizedBox(height: 16,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Name:",style: TextStyle(color: Color(0xff999999),fontSize: 16,fontWeight:FontWeight.w400)),
                    SizedBox(),
                    Text("Md Ratul",style: TextStyle(color: Color(0xff2E2C2C),fontSize: 16,fontWeight:FontWeight.w500)),
                  ],
                ),
                SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("INE:",style: TextStyle(color: Color(0xff999999),fontSize: 16,fontWeight:FontWeight.w400)),
                    SizedBox(),
                    Text("12345678964",style: TextStyle(color: Color(0xff2E2C2C),fontSize: 16,fontWeight:FontWeight.w500)),
                  ],
                ),
                SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Driving license no:",style: TextStyle(color: Color(0xff999999),fontSize: 16,fontWeight:FontWeight.w400)),
                    SizedBox(),
                    Text("61-10-2222",style: TextStyle(color: Color(0xff2E2C2C),fontSize: 16,fontWeight:FontWeight.w500)),
                  ],
                ),
                SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Pickup location:",style: TextStyle(color: Color(0xff999999),fontSize: 16,fontWeight:FontWeight.w400)),
                    SizedBox(),
                    Text("Mexico",style: TextStyle(color: Color(0xff2E2C2C),fontSize: 16,fontWeight:FontWeight.w500)),
                  ],
                ),

              ],
            ),
          );
        }
        ),

        bottomNavigationBar: BottomButton(onTap: (){
           Navigator.push(context, MaterialPageRoute(builder: (_)=>EndTripScreen()));

        },
            textColor: Color(0xffffffff),
            buttonName: "Start trip", buttonColor: Color(0xff000b90))

      ),
    );
  }
}
