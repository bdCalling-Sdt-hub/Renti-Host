import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:renti_host/view/screens/deal_information/ratings/rating_screen.dart';
import 'package:renti_host/view/widgets/button/bottom_button.dart';

import '../deal_information_end_trip/end_trip_screen.dart';

class ReviewDetailsScreen extends StatefulWidget {
  const ReviewDetailsScreen({super.key});

  @override
  State<ReviewDetailsScreen> createState() => _ReviewState();
}

class _ReviewState extends State<ReviewDetailsScreen> {
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => EndTripScreen()));
              },
              icon: const Icon(
                Icons.arrow_back_ios,
              ),
              color: Colors.black,
            )),
        body: LayoutBuilder(builder: (context, constraint) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsetsDirectional.symmetric(
                  vertical: 20, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Upload car photo",
                      style: TextStyle(
                          color: Color(0xff2E2C2C),
                          fontSize: 16,
                          fontWeight: FontWeight.w500)),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 2,
                        child: DottedBorder(
                            padding: const EdgeInsets.all(0),
                            dashPattern: const [
                              10,
                              10,
                            ],
                            color: const Color(0xffB0B3DD),
                            strokeWidth: 1,
                            borderType: BorderType.RRect,
                            radius: const Radius.circular(12),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: const Color(0xffE6E7F4),
                              ),
                              child: Center(
                                  child: Image.asset(
                                "assets/images/bi_image.png",
                                width: 40,
                                height: 35,
                              )),
                            )),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            DottedBorder(
                                padding: const EdgeInsets.all(0),
                                dashPattern: const [
                                  10,
                                  10,
                                ],
                                color: const Color(0xffB0B3DD),
                                strokeWidth: 1,
                                borderType: BorderType.RRect,
                                radius: const Radius.circular(12),
                                child: Container(
                                  height: 71,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: const Color(0xffE6E7F4),
                                  ),
                                  child: Center(
                                      child: Image.asset(
                                    "assets/images/bi_image.png",
                                    width: 40,
                                    height: 35,
                                  )),
                                )),
                            const SizedBox(
                              height: 8,
                            ),
                            DottedBorder(
                              padding: const EdgeInsets.all(0),
                              dashPattern: const [
                                10,
                                10,
                              ],
                              color: const Color(0xffB0B3DD),
                              strokeWidth: 1,
                              borderType: BorderType.RRect,
                              radius: const Radius.circular(12),
                              borderPadding: const EdgeInsets.all(1),
                              child: Container(
                                height: 71,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: const Color(0xffE6E7F4),
                                ),
                                child: Center(
                                  child: Image.asset(
                                    "assets/images/bi_image.png",
                                    width: 40,
                                    height: 35,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 56,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: const Color(0xff000B90),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Center(
                      child: Text("Capture Car Photo",
                          style: TextStyle(
                              color: Color(0xffFFFFFFC),
                              fontSize: 18,
                              fontWeight: FontWeight.w600)),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text("Rental Information",
                      style: TextStyle(
                          color: Color(0xff2E2C2C),
                          fontSize: 16,
                          fontWeight: FontWeight.w500)),
                  const SizedBox(
                    height: 16,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Car model:",
                          style: TextStyle(
                              color: Color(0xff999999),
                              fontSize: 16,
                              fontWeight: FontWeight.w400)),
                      SizedBox(),
                      Text("Toyota Corolla",
                          style: TextStyle(
                              color: Color(0xff2E2C2C),
                              fontSize: 16,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Car year:",
                          style: TextStyle(
                              color: Color(0xff999999),
                              fontSize: 16,
                              fontWeight: FontWeight.w400)),
                      SizedBox(),
                      Text("2015",
                          style: TextStyle(
                              color: Color(0xff2E2C2C),
                              fontSize: 16,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Car color:",
                          style: TextStyle(
                              color: Color(0xff999999),
                              fontSize: 16,
                              fontWeight: FontWeight.w400)),
                      SizedBox(),
                      Text("Blue",
                          style: TextStyle(
                              color: Color(0xff2E2C2C),
                              fontSize: 16,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Car license no:",
                          style: TextStyle(
                              color: Color(0xff999999),
                              fontSize: 16,
                              fontWeight: FontWeight.w400)),
                      SizedBox(),
                      Text("61-10-TMD",
                          style: TextStyle(
                              color: Color(0xff2E2C2C),
                              fontSize: 16,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Gear type:",
                          style: TextStyle(
                              color: Color(0xff999999),
                              fontSize: 16,
                              fontWeight: FontWeight.w400)),
                      SizedBox(),
                      Text('Manual',
                          style: TextStyle(
                              color: Color(0xff2E2C2C),
                              fontSize: 16,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Rental time:",
                          style: TextStyle(
                              color: Color(0xff999999),
                              fontSize: 16,
                              fontWeight: FontWeight.w400)),
                      SizedBox(),
                      Text("12pm - 12am",
                          style: TextStyle(
                              color: Color(0xff2E2C2C),
                              fontSize: 16,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Rental date:",
                          style: TextStyle(
                              color: Color(0xff999999),
                              fontSize: 16,
                              fontWeight: FontWeight.w400)),
                      SizedBox(),
                      Text('08 aug 2023 - 09 aug 2024',
                          style: TextStyle(
                              color: Color(0xff2E2C2C),
                              fontSize: 16,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const Text("User Information",
                      style: TextStyle(
                          color: Color(0xff2E2C2C),
                          fontSize: 16,
                          fontWeight: FontWeight.w500)),
                  const SizedBox(
                    height: 16,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Name:",
                          style: TextStyle(
                              color: Color(0xff999999),
                              fontSize: 16,
                              fontWeight: FontWeight.w400)),
                      SizedBox(),
                      Text("Md Ratul",
                          style: TextStyle(
                              color: Color(0xff2E2C2C),
                              fontSize: 16,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("INE:",
                          style: TextStyle(
                              color: Color(0xff999999),
                              fontSize: 16,
                              fontWeight: FontWeight.w400)),
                      SizedBox(),
                      Text("12345678964",
                          style: TextStyle(
                              color: Color(0xff2E2C2C),
                              fontSize: 16,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Driving license no:",
                          style: TextStyle(
                              color: Color(0xff999999),
                              fontSize: 16,
                              fontWeight: FontWeight.w400)),
                      SizedBox(),
                      Text("61-10-2222",
                          style: TextStyle(
                              color: Color(0xff2E2C2C),
                              fontSize: 16,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Pickup location:",
                          style: TextStyle(
                              color: Color(0xff999999),
                              fontSize: 16,
                              fontWeight: FontWeight.w400)),
                      SizedBox(),
                      Text("Mexico",
                          style: TextStyle(
                              color: Color(0xff2E2C2C),
                              fontSize: 16,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                ],
              ),
            ),
          );
        }),
        bottomNavigationBar: BottomButton(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => RatingScreen()));
          },
          buttonName: "Review",
          buttonColor: Color(0xffffffff),
          textColor: Color(0xff000b90),
        ),
      ),
    );
  }
}
