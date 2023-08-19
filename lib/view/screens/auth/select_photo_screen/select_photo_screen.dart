import 'package:flutter/material.dart';
import 'package:renti_host/view/screens/auth/kyc_screen/kyc_screen.dart';
import 'package:renti_host/view/screens/auth/mobile_number_verification_screen/mobile_number_verification_screen.dart';

import '../../../widgets/button/custom_button.dart';

class SelectPhotoScreen extends StatefulWidget {
  const SelectPhotoScreen({super.key});

  @override
  State<SelectPhotoScreen> createState() => _SelectPhotoScreenState();
}

class _SelectPhotoScreenState extends State<SelectPhotoScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        backgroundColor: Color(0xff000b90) ,
        appBar: AppBar(
          titleSpacing: -8,
          leading: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (_)=>Kyc_Screen()));
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
            'Select Photo',
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
                      decoration:  const BoxDecoration(
                          color: Color(0xFFFBFBFB),
                          // color: Color(0xFFFBFBFB),
                          borderRadius: BorderRadius.only(bottomLeft: Radius.zero,bottomRight: Radius.zero,topLeft: Radius.circular(8),topRight: Radius.circular(8))
                      ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, bottom: 24, top: 24),

                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsetsDirectional.only(top: 20),

                            height:  150,
                            width: 150,
                            decoration: BoxDecoration(
                             border: Border.all( color:  Color(0xff000B90),width: 2),
                              shape: BoxShape.circle,

                            ),
                            child: Container(
                              
                              child: Icon(Icons.camera_alt_outlined,size: 54,color: Color(0xffB0B3DD),),
                              margin: EdgeInsets.all(10),
                              
                              
                             
                              decoration: BoxDecoration(
                                color: Color(0xffE6E7F4),
                                shape: BoxShape.circle
                              ),
                              height: 130,
                              width: 130,
                            ),
                          ),
                        
                          const SizedBox(height: 16,),

                          const Text(
                            'Upload Your Photo',
                            style: TextStyle(
                                color: Color(0xFF000B90),
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),

                        ],
                      ),
                    ),
                  ),
                )),
            bottomNavigationBar: CustomButton(
          buttonName: "Continue",
          buttonColor: Color(0xff000b90),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>MobileNumberVerificationScreen()));
          },
        ),
      ),
    );
  }
}
