import 'package:flutter/material.dart';
import 'package:renti_host/view/screens/rent_request/user_request/user_request_screen.dart';
import '../../deal_information/deal_information_start_trip/start_trip_screen.dart';

class UserDetailsScreen extends StatefulWidget {
  const UserDetailsScreen({super.key});

  @override
  State<UserDetailsScreen> createState() => _UserDetailsScreenState();
}

class _UserDetailsScreenState extends State<UserDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    var constraint;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            centerTitle: false,
            elevation: 0,
            title: Text('User details',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600)),
            backgroundColor:Color(0xffffffff),
            leading: IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (_)=>UserRequestScreen()));
            }, icon:Icon(Icons.arrow_back_ios,),color: Colors.black,)
        ),
        body: LayoutBuilder(builder: (context,constraint){
          return SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsetsDirectional.symmetric(vertical: 24, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                           Row(
                        children: [
                          Image(image: AssetImage("assets/images/avater1.png"),width: 64,height:64 ,),
                          SizedBox(width: 16,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("John Doe",style: TextStyle(color: Color(0xff2E2C2C),fontSize: 24,fontWeight: FontWeight.w500),),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  Image(image: AssetImage("assets/images/Vector.png"),width: 12,height:12),
                                  SizedBox(width: 8,),
                                  Image(image: AssetImage("assets/images/Vector.png"),width: 12,height:12),
                                  SizedBox(width: 8,),
                                  Image(image: AssetImage("assets/images/Vector.png"),width: 12,height:12),
                                  SizedBox(width: 8,),
                                  Image(image: AssetImage("assets/images/Vector.png"),width: 12,height:12),
                                  SizedBox(width: 8,),
                                  Text("(4.5)"),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(

                        children: [
                      InkWell(
                        child: Container(
                          height: 24,
                          width: 24,
                          decoration: BoxDecoration(
                            color: Color(0xffE6E7F4),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child:  Icon(Icons.call,size: 18,),
                        ),
                      ),
                      const SizedBox(width: 16),
                      InkWell(
                        child: Container(
                          height: 24,
                          width: 24,
                          decoration: BoxDecoration(
                            color: Color(0xffE6E7F4),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Icon(Icons.message,size: 18,),
                        ),
                      ),
                    ],
                  )
                    ],
                  ),
                  SizedBox(height: 24,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Rent date:",style: TextStyle(color: Color(0xff999999),fontSize: 16,fontWeight:FontWeight.w400)),
                      SizedBox(),
                      Text("06 aug 2023- 07 aug 2023",style: TextStyle(color: Color(0xff2E2C2C),fontSize: 16,fontWeight:FontWeight.w500)),
                    ],
                  ),
                  SizedBox(height: 8,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total time:",style: TextStyle(color: Color(0xff999999),fontSize: 16,fontWeight:FontWeight.w400)),
                      SizedBox(),
                      Text("24 hours",style: TextStyle(color: Color(0xff2E2C2C),fontSize: 16,fontWeight:FontWeight.w500)),
                    ],
                  ),
                  SizedBox(height: 8,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Contact:",style: TextStyle(color: Color(0xff999999),fontSize: 16,fontWeight:FontWeight.w400)),
                      SizedBox(),
                      Text("+52 12837494",style: TextStyle(color: Color(0xff2E2C2C),fontSize: 16,fontWeight:FontWeight.w500)),
                    ],
                  ),
                  SizedBox(height: 8,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Location:",style: TextStyle(color: Color(0xff999999),fontSize: 16,fontWeight:FontWeight.w400)),
                      SizedBox(),
                      Text("Privada Calle 109 - Piso 4",style: TextStyle(color: Color(0xff2E2C2C),fontSize: 16,fontWeight:FontWeight.w500)),
                    ],
                  ),
                  SizedBox(height: 8,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total amount:",style: TextStyle(color: Color(0xff999999),fontSize: 16,fontWeight:FontWeight.w400)),
                      SizedBox(),
                      Text('\$${'120'}',style: TextStyle(color: Color(0xff2E2C2C),fontSize: 16,fontWeight:FontWeight.w500)),
                    ],
                  ),
                  SizedBox(height: 32,),
                  Text("Car details",style: TextStyle(color: Color(0xff2E2C2C),fontSize: 16,fontWeight:FontWeight.w500)),
                  SizedBox(height: 16,),
                  Container(
                    height: 142,
                    width: constraint.maxWidth,
                    child: Card(
                      elevation: 8,
                      child: Row(
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(left: 16,top: 16),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("Toyota Harrier",style: TextStyle(color: Color(0xff00086C),fontSize: 18,fontWeight:FontWeight.w500)),
                                const SizedBox(height: 8,),
                                const Text("License no: 55-43-TBV ",style: TextStyle(color: Color(0xff737373),fontSize: 14,fontWeight:FontWeight.w500)),
                                const SizedBox(height:8 ,),
                                Row(
                                  children: [
                                    Image.asset('assets/images/fuel.png',width: 16,height: 16,),
                                    const SizedBox(width: 8,),
                                    const Text("10 km/L",style: TextStyle(color: Color(0xff737373),fontSize: 14,fontWeight:FontWeight.w400)),
                                  ],
                                ),
                                const SizedBox(height: 8,),
                                Text("\$${"25/hr"}"),
                              ],
                            ),
                          ),
                          Image.asset('assets/images/car.png',width: 146,height: 68,),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height:16,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: (){
                          },
                          child: Container(
                            height: 48,
                            width: constraint.maxWidth,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Color(0xffFBE9EC),
                                borderRadius: BorderRadius.circular(8)
                            ),
                            child: Text("Cancel", textAlign: TextAlign.center, style: TextStyle(color: Color(0xffD7263D),fontSize: 18,fontWeight:FontWeight.w500)),
                          ),
                        ),
                      ),
                      SizedBox(width: 8,),
                      Expanded(
                        child: InkWell(
                          onTap: (){

                            Navigator.push(context, MaterialPageRoute(builder: (_)=>StartTrip()));
                          },
                          child: Container(
                            //alignment: Alignment.bottomRight,
                              height: 48,
                              width: constraint.maxWidth,
                              alignment: Alignment.center,

                              decoration: BoxDecoration(
                                  color: Color(0xff000B90),
                                borderRadius: BorderRadius.circular(8)
                              ),
                              child: Text("Approve", textAlign: TextAlign.center, style: TextStyle(color: Colors.white,fontSize: 18,fontWeight:FontWeight.w500))
                          ),
                        ),
                      ),
                    ],
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
