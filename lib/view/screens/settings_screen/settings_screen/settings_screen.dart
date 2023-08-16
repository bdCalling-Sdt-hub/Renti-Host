import 'package:flutter/material.dart';
import 'package:renti_host/view/screens/settings_screen/change_language_screen/change_language.dart';
import 'package:renti_host/view/screens/settings_screen/change_password_screen/change_password_screen.dart';
import 'package:renti_host/view/screens/settings_screen/payment_method_screen/payment_method_screen.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFFFFFFF),
        appBar: AppBar(
          titleSpacing: 20,

          automaticallyImplyLeading: false,
          backgroundColor: const Color(0xFFFFFFFF),
          title: const Text(
            'Settings',
            style: TextStyle(
                color: Color(0xFF2E2C2C),
                fontSize: 18,
                fontWeight: FontWeight.w600),
          ),
        ),
        body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) =>SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, bottom: 24, top: 24),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>const ChangeLanguageScreen()));
                      },
                      child: Container(
                          height: 70,
                          width: MediaQuery.of(context).size.width,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(width: 0.50, color: Color(0xFFE6E7F4)),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x19000000),
                                blurRadius: 10,
                                offset: Offset(0, 1),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child:const Padding(
                            padding:  EdgeInsets.all(12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Change Language',style: TextStyle(
                                    color: Color(0xFF2E2C2C),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),),
                                Icon(Icons.arrow_forward_ios,size: 16,color: Color(0xFF2E2C2C),)

                              ],
                            ),
                          )

                      ),
                    ),
                   const SizedBox(height: 8,),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>const ChangePasswordScreen()));
                      },
                      child: Container(
                          height: 70,
                          width: MediaQuery.of(context).size.width,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(width: 0.50, color: Color(0xFFE6E7F4)),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x19000000),
                                blurRadius: 10,
                                offset: Offset(0, 1),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child:const Padding(
                            padding:  EdgeInsets.all(12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Change Password',style: TextStyle(
                                    color: Color(0xFF2E2C2C),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),),
                                Icon(Icons.arrow_forward_ios,size: 16,color: Color(0xFF2E2C2C),)

                              ],
                            ),
                          )

                      ),
                    ),
                    const SizedBox(height: 8,),
                    GestureDetector(
                      onTap: ()=>showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            backgroundColor: Color(0xFFFFFFFF),
                            actions: [
                             Padding(
                               padding: const EdgeInsets.symmetric(vertical: 24,horizontal: 16),
                               child: Column(
                                 children: [
                                   Text('Set notification sound',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Color(0xFF2E2C2C)),),
                                   Divider(
                                     color: Color(0xFFE0DFDF),
                                   ),
                                 ],
                               ),
                             )

                            ],
                          ),
                        )
                      ,
                      child: Container(
                          height: 70,
                          width: MediaQuery.of(context).size.width,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(width: 0.50, color: Color(0xFFE6E7F4)),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x19000000),
                                blurRadius: 10,
                                offset: Offset(0, 1),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child:const Padding(
                            padding:  EdgeInsets.all(12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Notification Sound',style: TextStyle(
                                    color: Color(0xFF2E2C2C),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),),
                                Icon(Icons.arrow_forward_ios,size: 16,color: Color(0xFF2E2C2C),)

                              ],
                            ),
                          )

                      ),
                    ),
                    const SizedBox(height: 8,),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>const Payment_Method_Screen()));
                      },
                      child: Container(
                          height: 70,
                          width: MediaQuery.of(context).size.width,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(width: 0.50, color: Color(0xFFE6E7F4)),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x19000000),
                                blurRadius: 10,
                                offset: Offset(0, 1),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child:const Padding(
                            padding:  EdgeInsets.all(12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Payment Method',style: TextStyle(
                                    color: Color(0xFF2E2C2C),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),),
                                Icon(Icons.arrow_forward_ios,size: 16,color: Color(0xFF2E2C2C),)

                              ],
                            ),
                          )

                      ),
                    ),
                    const SizedBox(height: 8,),
                    GestureDetector(
                      onTap: (){},
                      child: Container(
                          height: 70,
                          width: MediaQuery.of(context).size.width,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(width: 0.50, color: Color(0xFFE6E7F4)),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x19000000),
                                blurRadius: 10,
                                offset: Offset(0, 1),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child:const Padding(
                            padding:  EdgeInsets.all(12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Privacy Policy',style: TextStyle(
                                    color: Color(0xFF2E2C2C),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),),
                                Icon(Icons.arrow_forward_ios,size: 16,color: Color(0xFF2E2C2C),)

                              ],
                            ),
                          )

                      ),
                    ),
                  ],
                ),
              ),

            )
        ),
      ),
    );
  }
}
