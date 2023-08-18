import 'package:flutter/material.dart';
import 'package:renti_host/view/screens/settings_screen/payment_method_screen/add_credit_card_screen.dart';

import '../settings_screen/settings_screen.dart';

class Payment_Method_Screen extends StatefulWidget {
  const Payment_Method_Screen({super.key});

  @override
  State<Payment_Method_Screen> createState() => _Payment_Method_ScreenState();
}

class _Payment_Method_ScreenState extends State<Payment_Method_Screen> {


  // initialize the tab controller

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
          child: Scaffold(
            backgroundColor: Color(0xFFFFFFFF),
            appBar: AppBar(
              titleSpacing: -8,
              leading: IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>const SettingsScreen()));
                },
                icon: const Icon(
                  Icons.arrow_back_ios_new_outlined,
                  size: 14,
                ),
                color: const Color(0xff2E2C2C),
              ),
              automaticallyImplyLeading: false,
              backgroundColor: const Color(0xFFFFFFFF),
              title: const Text(
                'Payment Method',
                style: TextStyle(
                    color: Color(0xFF2E2C2C),
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
              bottom: TabBar(
                  tabs: [
                    Tab(text: 'Credit Card',),
                    Tab(text: 'Debit Card',),
                  ]
              ),
            ),
            body:   TabBarView(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 24),
                  child: Column(
                    children: [
                      Container(
                          height: 70,
                          width: MediaQuery.of(context).size.width,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(width: 1, color: Color(0xFFCCCCCC)),
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
                                Text('Credit Card'),
                                Icon(Icons.arrow_forward_ios,size: 16,color: Color(0xFF2E2C2C),)

                              ],
                            ),
                          )

                      ),
                      const SizedBox(height: 8,),
                      Container(
                          height: 70,
                          width: MediaQuery.of(context).size.width,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(width: 1, color: Color(0xFFCCCCCC)),
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
                                Text('Credit Card'),
                                Icon(Icons.arrow_forward_ios,size: 16,color: Color(0xFF2E2C2C),)

                              ],
                            ),
                          )

                      ),
                      const SizedBox(height: 8,),
                      Container(
                          height: 70,
                          width: MediaQuery.of(context).size.width,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(width: 1, color: Color(0xFFCCCCCC)),
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
                                Text('Credit Card'),
                                Icon(Icons.arrow_forward_ios,size: 16,color: Color(0xFF2E2C2C),)

                              ],
                            ),
                          )

                      ),
                      const SizedBox(height: 28,),
                      GestureDetector(
                       onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (_)=>AddCreditCardScreen()));
                       },
                        child: Row(
                          children: [
                            Image.asset('assets/logos/radix.png',height: 24,width: 24,),
                            SizedBox(width: 8,),
                            Text('Add New',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Color(0xff000B90)),)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 20,vertical: 24),
                  child: Column(
                    children: [
                      Container(
                          height: 70,
                          width: MediaQuery.of(context).size.width,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(width: 1, color: Color(0xFFCCCCCC)),
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
                                Text('Credit Card'),
                                Icon(Icons.arrow_forward_ios,size: 16,color: Color(0xFF2E2C2C),)

                              ],
                            ),
                          )

                      ),
                      SizedBox(height: 8,),
                      Container(
                          height: 70,
                          width: MediaQuery.of(context).size.width,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(width: 1, color: Color(0xFFCCCCCC)),
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
                                Text('Credit Card'),
                                Icon(Icons.arrow_forward_ios,size: 16,color: Color(0xFF2E2C2C),)

                              ],
                            ),
                          )

                      ),
                      SizedBox(height: 8,),
                      Container(
                          height: 70,
                          width: MediaQuery.of(context).size.width,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(width: 1, color: Color(0xFFCCCCCC)),
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
                                Text('Credit Card'),
                                Icon(Icons.arrow_forward_ios,size: 16,color: Color(0xFF2E2C2C),)

                              ],
                            ),
                          )

                      ),
                      SizedBox(height: 28,),
                      InkWell(
                       onTap: (){
                         showDialog(
                           context: context,
                           builder: (BuildContext context)=>Padding(
                             padding: const EdgeInsets.symmetric(horizontal: 20),
                             child: Column(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Container(
                                   width: 350,
                                   height: 359,
                                   clipBehavior: Clip.antiAlias,
                                   decoration: ShapeDecoration(
                                     color: Colors.white,
                                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                                     shadows: [
                                       BoxShadow(
                                         color: Color(0x19000000),
                                         blurRadius: 10,
                                         offset: Offset(0, 1),
                                         spreadRadius: 0,
                                       )
                                     ],
                                   ),
                                   child: Column(
                                     children: [
                                       Text('Add Card',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Color(0xFF2E2C2C)),),
                                       Divider(
                                         color: Color(0xFFE0DFDF),
                                       ),
                                       Column(
                                         crossAxisAlignment: CrossAxisAlignment.start,
                                         children: [
                                           const Text(
                                             'Account Holder Name',
                                             style: TextStyle(
                                                 color: Color(0xFF2E2C2C),
                                                 fontSize: 16,
                                                 fontWeight: FontWeight.w400),
                                           ),
                                           const  SizedBox(
                                             height: 12,
                                           ),
                                           TextFormField(
                                             style:const TextStyle(color: Color(0xFF2E2C2C)),
                                             maxLines: 1,
                                             keyboardType: TextInputType.text,
                                             decoration:const InputDecoration(
                                               fillColor: Color(0xFFFFFFFF),
                                               hintText: 'Type here...',
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
                                           const  Text(
                                             'Phone Number',
                                             style: TextStyle(
                                                 color: Color(0xFF2E2C2C),
                                                 fontSize: 16,
                                                 fontWeight: FontWeight.w400),
                                           ),
                                           const SizedBox(
                                             height: 12,
                                           ),
                                           Row(
                                             crossAxisAlignment: CrossAxisAlignment.center,

                                             children: [
                                               Expanded(
                                                   child: Container(

                                                     padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 14),
                                                     decoration: BoxDecoration(
                                                         borderRadius: BorderRadius.circular(8),
                                                         border: Border.all(
                                                             color: Color(0xFFCCCCCC)
                                                         )
                                                     ),
                                                     child: Row(
                                                       children: [
                                                         SizedBox(
                                                           height: 40,
                                                           width: 40,
                                                           child: Image.asset('assets/logos/flag.png'),
                                                         ),
                                                         const SizedBox(width: 12,),
                                                         const Text('+52', style: TextStyle(
                                                             color: Color(0xFFCCCCCC),
                                                             fontSize: 14,
                                                             fontWeight: FontWeight.w400),)
                                                       ],
                                                     ),
                                                   )
                                               ),
                                               const SizedBox(width: 10,),
                                               Expanded(
                                                 child: TextFormField(
                                                   style: TextStyle(color: Color(0xFF2E2C2C)),
                                                   maxLines: 1,
                                                   keyboardType: TextInputType.text,
                                                   decoration:const InputDecoration(
                                                     fillColor: Color(0xFFFFFFFF),
                                                     hintText: 'Type mobile number...',
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
                                               ),
                                               const SizedBox(width: 10,),

                                             ],
                                           ),
                                           const Text(
                                             'Email',
                                             style: TextStyle(
                                                 color: Color(0xFF2E2C2C),
                                                 fontSize: 16,
                                                 fontWeight: FontWeight.w400),
                                           ),
                                           const  SizedBox(
                                             height: 12,
                                           ),
                                           TextFormField(

                                             style: TextStyle(color: Color(0xFF2E2C2C)),
                                             maxLines: 1,
                                             keyboardType: TextInputType.text,
                                             decoration:const InputDecoration(
                                               fillColor: Color(0xFFFFFFFF),
                                               hintText: 'type here...',
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
                                             validator: (value) {
                                               if (value == null || value.isEmpty) {
                                                 return 'this field can not be empty';
                                               } else if (!value.contains(RegExp('\@'))) {
                                                 return 'Please enter a valid email';
                                               } else {
                                                 return null;
                                               }
                                             },
                                           ),
                                           const  SizedBox(
                                             height: 16,
                                           ),
                                           const SizedBox(height: 16,),
                                           const Text(
                                             'Bank Account Number',
                                             style: TextStyle(
                                                 color: Color(0xFF2E2C2C),
                                                 fontSize: 16,
                                                 fontWeight: FontWeight.w400),
                                           ),
                                           const  SizedBox(
                                             height: 12,
                                           ),
                                           TextFormField(
                                             style:const TextStyle(color: Color(0xFF2E2C2C)),
                                             maxLines: 1,
                                             keyboardType: TextInputType.text,
                                             decoration:const InputDecoration(
                                               fillColor: Color(0xFFFFFFFF),
                                               hintText: 'Type here...',
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
                                           const SizedBox(height: 16,),
                                           const  SizedBox(height: 44,),

                                           SizedBox(
                                             height: 57,
                                             width: MediaQuery.of(context).size.width,
                                             child: ElevatedButton(
                                                 onPressed: () {

                                                 },
                                                 child:const Text(
                                                   'Save',
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
                                       SizedBox(height: 16,),
                                     ],
                                   ),

                                 )
                               ],
                             ),
                           )
                         );
                       },
                        child: Row(
                          children: [
                            Icon(Icons.add_circle_outline,size: 18,),
                            SizedBox(width: 8,),
                            Text('Add New',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Color(0xff000B90)),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
