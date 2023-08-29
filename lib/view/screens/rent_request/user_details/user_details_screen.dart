import 'package:flutter/material.dart';
import 'package:renti_host/view/screens/rent_request/user_details/inner_widgets/car-details_body.dart';
import 'package:renti_host/view/screens/rent_request/user_details/inner_widgets/car_details.dart';
import 'package:renti_host/view/screens/rent_request/user_details/inner_widgets/user_details_top_section.dart';
import 'package:renti_host/view/screens/rent_request/user_request/user_request_screen.dart';
import '../../deal_information/deal_information_start_trip/start_trip_screen.dart';

class UserDetailsScreen extends StatefulWidget {
  const UserDetailsScreen({super.key});

  @override
  State<UserDetailsScreen> createState() => _UserDetailsScreenState();
}

class _UserDetailsScreenState extends State<UserDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor:const Color(0xffffffff),
        appBar: AppBar(
            titleSpacing: -8,
            centerTitle: false,
            elevation: 0,
            title: const Text('User details',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600)),
            backgroundColor:const Color(0xffffffff),
            leading: IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (_)=>UserRequestScreen()));
            }, icon:const Icon(Icons.arrow_back_ios,),color: Colors.black,)
        ),
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
