import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:renti_host/view/screens/deal_information/%20deal_information_review/review_filled_box/reviewfilledbox.dart';

import '../deal_information_end_trip/end_trip_screen.dart';
class Review extends StatefulWidget {
  const Review({super.key});

  @override
  State<Review> createState() => _ReviewState();
}

class _ReviewState extends State<Review> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            centerTitle: false,
            elevation: 0,
            title: Text('Car Deal Information',
                style: TextStyle(
                    color: Color(0xff2E2C2C),
                    fontSize: 18,
                    fontWeight: FontWeight.w600)),
            backgroundColor: Color(0xffffffff),
            leading: IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=>EndTrip()));
              },
              icon: Icon(
                Icons.arrow_back_ios,
              ),
              color: Colors.black,
            )),
        body: LayoutBuilder(builder: (context, constraint) {
          return SingleChildScrollView(
            child: Padding(
              padding:
              EdgeInsetsDirectional.symmetric(vertical: 20, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Upload car photo",
                      style: TextStyle(
                          color: Color(0xff2E2C2C),
                          fontSize: 16,
                          fontWeight: FontWeight.w500)),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DottedBorder(
                          dashPattern: [
                            10,
                            6,
                          ],
                          color: Color(0xffB0B3DD),
                          strokeWidth: 1,
                          borderType: BorderType.RRect,
                          radius: Radius.circular(12),
                          child: Container(
                            width: 172,
                            height: 156,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xffE6E7F4),
                            ),
                            child: Center(
                                child: Image.asset(
                                  "assets/images/bi_image.png",
                                  width: 40,
                                  height: 35,
                                )),
                          )),
                      SizedBox(
                        width: 8,
                      ),
                      Column(
                        children: [
                          DottedBorder(
                              dashPattern: [
                                10,
                                6,
                              ],
                              color: Color(0xffB0B3DD),
                              strokeWidth: 1,
                              borderType: BorderType.RRect,
                              radius: Radius.circular(12),
                              child: Container(
                                height: 72,
                                width: 132,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color(0xffE6E7F4),
                                ),
                                child: Center(
                                    child: Image.asset(
                                      "assets/images/bi_image.png",
                                      width: 40,
                                      height: 35,
                                    )),
                              )),
                          SizedBox(
                            height: 8,
                          ),
                          DottedBorder(
                              dashPattern: [
                                10,
                                6,
                              ],
                              color: Color(0xffB0B3DD),
                              // strokeWidth: 1,
                              borderType: BorderType.RRect,
                              radius: Radius.circular(12),
                              borderPadding: EdgeInsets.all(1),
                              child: Container(
                                height: 72,
                                width: 132,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color(0xffE6E7F4),
                                ),
                                child: Center(
                                    child: Image.asset(
                                      "assets/images/bi_image.png",
                                      width: 40,
                                      height: 35,
                                    )),
                              )),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 56,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color(0xff000B90),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text("Capture Car Photo",
                          style: TextStyle(
                              color: Color(0xffFFFFFFC),
                              fontSize: 18,
                              fontWeight: FontWeight.w600)),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text("Rental Information",
                      style: TextStyle(
                          color: Color(0xff2E2C2C),
                          fontSize: 16,
                          fontWeight: FontWeight.w500)),
                  SizedBox(height: 16,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Car model:",style: TextStyle(color: Color(0xff999999),fontSize: 16,fontWeight:FontWeight.w400)),
                      SizedBox(),
                      Text("Toyota Corolla",style: TextStyle(color: Color(0xff2E2C2C),fontSize: 16,fontWeight:FontWeight.w500)),
                    ],
                  ),
                  SizedBox(height: 8,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Car year:",style: TextStyle(color: Color(0xff999999),fontSize: 16,fontWeight:FontWeight.w400)),
                      SizedBox(),
                      Text("2015",style: TextStyle(color: Color(0xff2E2C2C),fontSize: 16,fontWeight:FontWeight.w500)),
                    ],
                  ),
                  SizedBox(height: 8,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Car color:",style: TextStyle(color: Color(0xff999999),fontSize: 16,fontWeight:FontWeight.w400)),
                      SizedBox(),
                      Text("Blue",style: TextStyle(color: Color(0xff2E2C2C),fontSize: 16,fontWeight:FontWeight.w500)),
                    ],
                  ),
                  SizedBox(height: 8,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Car license no:",style: TextStyle(color: Color(0xff999999),fontSize: 16,fontWeight:FontWeight.w400)),
                      SizedBox(),
                      Text("61-10-TMD",style: TextStyle(color: Color(0xff2E2C2C),fontSize: 16,fontWeight:FontWeight.w500)),
                    ],
                  ),
                  SizedBox(height: 8,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Gear type:",style: TextStyle(color: Color(0xff999999),fontSize: 16,fontWeight:FontWeight.w400)),
                      SizedBox(),
                      Text('Manual',style: TextStyle(color: Color(0xff2E2C2C),fontSize: 16,fontWeight:FontWeight.w500)),
                    ],
                  ),
                  SizedBox(height: 8,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Rental time:",style: TextStyle(color: Color(0xff999999),fontSize: 16,fontWeight:FontWeight.w400)),
                      SizedBox(),
                      Text("12pm - 12am",style: TextStyle(color: Color(0xff2E2C2C),fontSize: 16,fontWeight:FontWeight.w500)),
                    ],
                  ),
                  SizedBox(height: 8,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Rental date:",style: TextStyle(color: Color(0xff999999),fontSize: 16,fontWeight:FontWeight.w400)),
                      SizedBox(),
                      Text('08 aug 2023 - 09 aug 2024',style: TextStyle(color: Color(0xff2E2C2C),fontSize: 16,fontWeight:FontWeight.w500)),
                    ],
                  ),
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
                  SizedBox(height: 32,),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>FilledBox()));
                    },
                    child: Container(
                      height: 56,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Color(0xff000B90))
                      ),
                      child: Center(
                        child: Text("Review",
                            style: TextStyle(
                                color: Color(0xff000B90),
                                fontSize: 18,
                                fontWeight: FontWeight.w600)),
                      ),
                    ),
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
