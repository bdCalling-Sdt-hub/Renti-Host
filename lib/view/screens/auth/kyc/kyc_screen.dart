import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:renti_host/view/widgets/button/custom_button.dart';

import '../second_signup/second_signup_screen.dart';
import '../select_photo/select_photo_screen.dart';

class Kyc_Screen extends StatefulWidget {
  const Kyc_Screen({super.key});

  @override
  State<Kyc_Screen> createState() => _Kyc_ScreenState();
}

class _Kyc_ScreenState extends State<Kyc_Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        backgroundColor: Color(0xff000b90),
        appBar: AppBar(
          titleSpacing: -8,
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => const SecondSignUpScreen()));
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_outlined,
              size: 14,
            ),
            color: const Color(0xFfFFFFFF),
          ),
          automaticallyImplyLeading: false,
          backgroundColor: const Color(0xFF000B90),
          title: const Text(
            'KYC',
            style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontSize: 18,
                fontWeight: FontWeight.w500),
          ),
        ),
        body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) =>
                SingleChildScrollView(
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                        color: Color(0xFFFBFBFB),
                        // color: Color(0xFFFBFBFB),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.zero,
                            bottomRight: Radius.zero,
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(8))),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, bottom: 24, top: 24),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 146,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    color: const Color(0xffe6e7f4),
                                    borderRadius: BorderRadius.circular(8)),
                                child: DottedBorder(
                                  strokeWidth: 1,
                                  dashPattern: const [10, 10],
                                  color: const Color(0xffB0B3DD),
                                  borderType: BorderType.RRect,
                                  radius: const Radius.circular(8),
                                  padding: const EdgeInsets.all(2),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 50,
                                        width: 50,
                                        child: Image.asset(
                                          'assets/logos/Vector.png',
                                          height: 34,
                                          width: 50,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 25,
                                      ),
                                      Center(
                                        child: SizedBox(
                                          height: 48,
                                          width: 318,
                                          child: ElevatedButton(
                                              onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (_) =>
                                                            Kyc_Screen()));
                                              },
                                              style: ElevatedButton.styleFrom(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5)),
                                                backgroundColor:
                                                    Color(0xFF000B90),
                                              ),
                                              child: const Text(
                                                'Upload',
                                                style: TextStyle(
                                                    color: Color(0xffFFFFFF),
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              )),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              const Text(
                                '1. Upload INE/Passport ',
                                style: TextStyle(
                                    color: Color(0xff737373),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              ),
                              const Text(
                                '2. Tax stamps .key extension file',
                                style: TextStyle(
                                    color: Color(0xff737373),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              ),
                              const Text(
                                '3. Tax stamps .cer extension file',
                                style: TextStyle(
                                    color: Color(0xff737373),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              const Text(
                                'RFC',
                                style: TextStyle(
                                    color: Color(0xff2E2C2C),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              const TextField(
                                style: TextStyle(color: Color(0xFF2E2C2C)),
                                maxLines: 1,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  fillColor: Color(0xFFFFFFFF),
                                  hintText: 'Type RFC here...',
                                  hintStyle: TextStyle(
                                      letterSpacing: 1,
                                      color: Color(0xFFCCCCCC)),
                                  filled: true,
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide()),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                    color: Color(0xFFCCCCCC),
                                  )),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFCCCCCC),
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFFCCCCCC))),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )),
        bottomNavigationBar: CustomButton(
          buttonName: "Continue",
          buttonColor: Color(0xff000b90),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (_) => SelectPhotoScreen()));
          },
        ),
      ),
    );
  }
}
