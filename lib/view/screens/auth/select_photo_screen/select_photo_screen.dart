import 'package:flutter/material.dart';
import 'package:renti_host/view/screens/auth/kyc_screen/kyc_screen.dart';
import 'package:renti_host/view/screens/auth/mobile_number_verification_screen/mobile_number_verification_screen.dart';

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
        backgroundColor: Color(0xFFFFFFFF),
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
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, bottom: 24, top: 24),
                    child: Column(
                      children: [
                        SizedBox(height: 44,),
                       CircleAvatar(
                         radius: 60,
                         child:  CircleAvatar(
                           radius: 50,
                           foregroundColor: Color(0xffE6E7F4),
                           child: Icon(Icons.camera_alt,size: 34,color: Color(0xFFB0B3DD),),
                         ),
                       ),
                        SizedBox(height: 16,),
                        Text(
                          'Upload Your Photo',
                          style: TextStyle(
                              color: Color(0xFF000B90),
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 440,),
                        SizedBox(
                          height: 57,
                          width: MediaQuery.of(context).size.width,
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (_)=>MobileNumberVerificationScreen()));
                              },
                              child: Text(
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
                                backgroundColor: Color(0xFF000B90),
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
