import 'package:flutter/material.dart';
import 'package:renti_host/view/screens/rent_request/user_request/inner_widgets/card_top.dart';

import '../user_details/user_details_screen.dart';


class UserRequestScreen extends StatefulWidget {
  const UserRequestScreen({super.key});

  @override
  State<UserRequestScreen> createState() => _UserRequestScreenState();
}

class _UserRequestScreenState extends State<UserRequestScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor:const Color(0xffffffff),
          appBar:  AppBar(
            automaticallyImplyLeading: false,
            centerTitle: false,
            backgroundColor:const Color(0xffffffff),
            elevation: 0,
            title: const Text("Users Request",style: TextStyle(color: Color(0xFF2E2C2C),fontSize: 18,fontWeight: FontWeight.w600),
            ),
          ),
          body: LayoutBuilder(
            builder: (context,constraint){
              return SingleChildScrollView(
                padding: const EdgeInsetsDirectional.only(top: 24,end: 20,start: 20),
                  scrollDirection: Axis.vertical,
                  child:Column(
                      children: List.generate(50, (index) =>GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (_)=>UserDetailsScreen()));
                        },
                        child: Container(
                          padding: const EdgeInsetsDirectional.only(top: 16,start: 16,bottom: 16,end: 16),
                          margin: const EdgeInsetsDirectional.only(bottom: 24),
                          decoration: BoxDecoration(
                            color: const Color(0xffffffff),
                            borderRadius: BorderRadius.circular(8),
                            boxShadow:  [
                              BoxShadow(
                                color: const Color(0xff000000).withOpacity(0.1),
                                blurRadius: 10,
                                offset: const Offset(0, 1)
                              )
                            ]
                          ),
                          child: Column(
                            children: [
                              const CardTop(),
                              const SizedBox(height: 16,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
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
                                  const SizedBox(width: 8,),
                                  Expanded(
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
                                ],
                              ),
                            ],
                          ),
                        ),
                      ) ,)
                  )
              );
            },
          ),
        )
    );
  }
}
