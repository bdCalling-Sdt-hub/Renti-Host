import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:renti_host/view/screens/auth/second_signup_screen/second_signup_screen.dart';
import 'package:renti_host/view/screens/auth/select_photo_screen/select_photo_screen.dart';

class Kyc_Screen extends StatefulWidget {
  const Kyc_Screen({super.key});

  @override
  State<Kyc_Screen> createState() => _Kyc_ScreenState();
}

class _Kyc_ScreenState extends State<Kyc_Screen> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor:const Color(0xFFFFFFFF),
        appBar: AppBar(
          titleSpacing: -8,
          leading: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (_)=>const SecondSignUpScreen()));
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
                              width: 350,

                              color: Color(0xFFE6E7F4),
                              child: DottedBorder(
                                strokeWidth: 2,
                                dashPattern:const [
                                  10,
                                  10
                                ],

                                color: Color(0xffB0B3DD),
                                borderType: BorderType.RRect,
                                radius: Radius.circular(8),
                                padding: EdgeInsets.all(2),
                                child: Column(

                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      child: Image.asset('assets/logos/Vector.png',height: 34,width: 50,),
                                    ),
                                    const SizedBox(height: 25,),
                                    Center(
                                      child: SizedBox(
                                        height: 48,
                                        width: 318,
                                        child: ElevatedButton(
                                            onPressed: () {
                                              Navigator.push(context, MaterialPageRoute(builder: (_)=>Kyc_Screen()));
                                            },
                                            child:const Text(
                                              'Upload',
                                              style: TextStyle(
                                                  color: Color(0xffFFFFFF),
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            style: ElevatedButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(5)),
                                              backgroundColor: Color(0xFF000B90),
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 16,),
                            const Text('1. Upload INE/Passport ', style: TextStyle(
                                color: Color(0xff737373),
                                fontSize: 14,
                                fontWeight: FontWeight.w400),),
                            const Text('2. Tax stamps .key extension file', style: TextStyle(
                                color: Color(0xff737373),
                                fontSize: 14,
                                fontWeight: FontWeight.w400),),
                            const Text('3. Tax stamps .cer extension file', style: TextStyle(
                                color: Color(0xff737373),
                                fontSize: 14,
                                fontWeight: FontWeight.w400),),
                            const SizedBox(height: 16,),
                            const Text(
                              'RFC',
                              style: TextStyle(
                                  color: Color(0xff2E2C2C),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            ),
                            const  SizedBox(height: 12,),

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
                        SizedBox(height: 330,),

                        SizedBox(
                          height: 57,
                          width: MediaQuery.of(context).size.width,
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (_)=>SelectPhotoScreen()));
                              },
                              child:const Text(
                                'Continue',
                                style: TextStyle(
                                    color: Color(0xffFFFFFF),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),
                              ),
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.circular(5)),
                                backgroundColor:const Color(0xFF000B90),
                              )),
                        ),
                      ],
                    ),
                  ),
                )),
      ),
    );
  }
}
