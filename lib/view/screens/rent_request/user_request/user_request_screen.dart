import 'package:flutter/material.dart';

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
          appBar:  AppBar(
            centerTitle: false,
            backgroundColor:const Color(0xffffffff),
            elevation: 0,
            title: const Text("Users Request",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),
            ),
          ),
          body: LayoutBuilder(
            builder: (context,constraint){
              return SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child:Column(
                      children: List.generate(50, (index) =>Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (_)=>UserDetailsScreen()));
                          },
                          child: Card(
                            elevation: 10,
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(16),
                              child: Column(
                                children: [
                                  const Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Image(image: AssetImage("assets/images/Avater.png"),width: 50,height:50 ,),
                                      SizedBox(width: 16,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children:  [
                                          Text("John Doe",style: TextStyle(color: Color(0xff2E2C2C),fontSize: 18,fontWeight: FontWeight.w500),),
                                          SizedBox(height: 8,),
                                          Row(
                                            children: [
                                              Image(image: AssetImage("assets/images/Vector.png"),width: 12,height:12),
                                              SizedBox(width: 4,),
                                              Image(image: AssetImage("assets/images/Vector.png"),width: 12,height:12),
                                              SizedBox(width: 4,),
                                              Image(image: AssetImage("assets/images/Vector.png"),width: 12,height:12),
                                              SizedBox(width: 4,),
                                              Image(image: AssetImage("assets/images/Vector.png"),width: 12,height:12),
                                              SizedBox(width: 2,),
                                              Text("(4.5)"),
                                            ],
                                          ),
                                          SizedBox(height: 8,),
                                          Row(
                                            children: [
                                              Icon(Icons.location_on,size: 14,),
                                              SizedBox(width: 8,),
                                              Text("Privada Calle 109 - Piso 4",style: TextStyle(color: Color(0xff737373),fontSize: 14,fontWeight:FontWeight.w400 ),),
                                              SizedBox()
                                            ],
                                          ),
                                          SizedBox(height: 8,),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Icon(Icons.calendar_month,size: 14,),
                                              SizedBox(width: 8,),
                                              Padding(
                                                padding: EdgeInsets.only(top: 8),
                                                child: Text("06 aug 2023- 07 aug 2023",style: TextStyle(color: Color(0xff737373),fontSize: 14,fontWeight:FontWeight.w400 ),),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 24,),
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
