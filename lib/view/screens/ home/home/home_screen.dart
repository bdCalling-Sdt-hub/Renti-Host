import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:renti_host/view/screens/%20home/home/inner_widgets/custom_car_list.dart';
import 'package:renti_host/view/screens/search/search_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _PendingApprovalScreenState();
}

class _PendingApprovalScreenState extends State<HomeScreen> {



  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Scaffold(
        key: scaffoldKey,


        drawer:  Drawer(
          width: 227,
          backgroundColor: Color(0xffFFFFFF),
          child:  Column(

            children: [


              const Padding(
                padding: EdgeInsets.only(left:0),
                child: UserAccountsDrawerHeader(
                  accountName: Text("John Doe",style: TextStyle(color: Color(0xff2E2C2C),fontSize: 18,fontWeight: FontWeight.w500,),),
                  accountEmail: Text("+5237455372562",style: TextStyle(color: Color(0xff999999),fontSize:10 ,fontWeight:FontWeight.w400 ,),),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage:AssetImage("assets/icon_image/avater.png",)),

                  decoration: BoxDecoration(
                    border: Border(bottom: BorderSide.none,),
                    color: Color(0xfffffff)
                  ),
                    ),
              ),

              Padding(
                padding: EdgeInsets.only(left: 28.0 ,bottom: 24),
                child: Row(
                  children: [
                    Icon(Icons.add_circle_outline_sharp,size: 18,color: Color(0xff999999),),
                    SizedBox(width: 16,),
                    Text("Add Car",style: TextStyle(color: Color(0xff999999),fontSize: 14),),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 28.0 ,bottom: 24),
                child: Row(
                  children: [
                    Icon(Icons.car_crash_outlined,size: 18,color: Color(0xff999999),),
                    SizedBox(width: 16,),
                    Text("Car list",style: TextStyle(color: Color(0xff999999),fontSize: 14),),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 28.0 ,bottom: 24),
                child: Row(
                  children: [
                    Icon(Icons.person,size: 18,color: Color(0xff999999),),
                    SizedBox(width: 16,),
                    Text("User List",style: TextStyle(color: Color(0xff999999),fontSize: 14),),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 28.0 ,bottom: 24),
                child: Row(
                  children: [
                    Icon(Icons.vpn_key,size: 18,color: Color(0xff999999),),
                    SizedBox(width: 16,),
                    Text("Rent List",style: TextStyle(color: Color(0xff999999),fontSize: 14),),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 28.0 ,bottom: 24),
                child: Row(
                  children: [
                    Icon(Icons.star_border_outlined,size: 18,color: Color(0xff999999),),
                    SizedBox(width: 16,),
                    Text("Review list",style: TextStyle(color: Color(0xff999999),fontSize: 14),),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 28.0 ,bottom: 24),
                child: Row(
                  children: [
                    Icon(Icons.attach_money_outlined,size: 18,color: Color(0xff999999),),
                    SizedBox(width: 16,),
                    Text("Income",style: TextStyle(color: Color(0xff999999),fontSize: 14),),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 28.0 ,bottom: 16),
                child: Row(
                  children: [
                    Icon(Icons.kayaking_outlined,size: 18,color: Color(0xff999999),),
                    SizedBox(width: 16,),
                    Text("Admin Info",style: TextStyle(color: Color(0xff999999),fontSize: 14),),
                  ],
                ),
              ),
              Divider(

                height: 1,
                color: Color(0xff999999),
              ),
              Padding(
                padding: EdgeInsets.only(left: 28.0 ,bottom: 24,top: 16),
                child: Row(
                  children: [
                    Icon(Icons.settings,size: 18,color: Color(0xff999999),),
                    SizedBox(width: 16,),
                    Text("Settings",style: TextStyle(color: Color(0xff999999),fontSize: 14),),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 28.0 ,bottom: 24),
                child: Row(
                  children: [
                    Icon(Icons.question_mark,size: 18,color: Color(0xff999999),),
                    SizedBox(width: 16,),
                    Text("How to works",style: TextStyle(color: Color(0xff999999),fontSize: 14),),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 24.0 ,bottom: 24),
                child: Row(
                  children: [
                    Icon(Icons.error_outline,size: 18,color: Color(0xff999999),),
                    SizedBox(width: 16,),
                    Text("Terms And Conditions",style: TextStyle(color: Color(0xff999999),fontSize: 14),),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 28.0 ,bottom: 24),
                child: Row(
                  children: [
                    Icon(Icons.headset_mic_rounded,size: 18,color: Color(0xff999999),),
                    SizedBox(width: 16,),
                    Text("Support",style: TextStyle(color: Color(0xff999999),fontSize: 14),),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 28.0 ,bottom: 16),
                child: Row(
                  children: [
                    Icon(Icons.error_outline,size: 18,color: Color(0xff999999),),
                    SizedBox(width: 16,),
                    Text("About Us",style: TextStyle(color: Color(0xff999999),fontSize: 14),),
                  ],
                ),
              ),
              Divider(
                color: Color(0xff999999),
                height: 1,
              ),
              Padding(
                padding: EdgeInsets.only(left: 28.0,top: 16),
                child: InkWell(
                  onTap: (){
                    showDialog<void>(
                      context: context,
                      barrierDismissible: false, // user must tap button!
                      builder: (BuildContext context) {
                        return AlertDialog(

                          title: Container(
                            width: 350,
                            child:  Column(
                              children: [
                                Text("You sure want to log out",style: TextStyle(color: Color(0xff2E2C2C),fontSize:18 ,fontWeight:FontWeight.w600 ),),
                                
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 24.0,horizontal:0),
                                  child: Divider(
                                    height: 1,
                                    color: Color(0xff999999),
                                  ),
                                ),

                                Row(
                                  children: [
                                    Expanded(child: ElevatedButton(onPressed: (){
                                      Navigator.pop(context);
                                    },
                                        style:ElevatedButton.styleFrom(
                                          backgroundColor: Color(0xffD7263D).withOpacity(0.5)
                                        ),

                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(vertical: 11.5),
                                          child: Text("Yes",style: TextStyle(color: Color(0xffD7263D),fontSize: 18,fontWeight: FontWeight.w600),),
                                        )
                                    )
                                    ),
                                    SizedBox(width: 8,),
                                    Expanded(child: ElevatedButton(

                                      onPressed: (){
                                      Navigator.pop(context);
                                    },

                                        style:ElevatedButton.styleFrom(
                                            backgroundColor: Color(0xff000B90).withOpacity(0.5)
                                        ),

                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(vertical: 11.5),
                                          child: Text("No",style: TextStyle(color: Color(0xffffffff),fontSize: 18,fontWeight: FontWeight.w600),),
                                        )

                                    )),
                                  ],
                                )

                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Row(
                    children: [
                      Icon(Icons.logout,size: 18,color: Color(0xff999999),),
                      SizedBox(width: 16,),
                      Text("Log Out",style: TextStyle(color: Color(0xff999999),fontSize: 14),),
                    ],
                  ),
                ),
              ),




            ],
          ),



        ),





        appBar: PreferredSize(
          preferredSize: Size(MediaQuery.of(context).size.width, 64),
          child: AppBar(
            elevation: 0,
            leading: GestureDetector(
                onTap: () => scaffoldKey.currentState?.openDrawer(),
                child: const Padding(
                  padding: EdgeInsetsDirectional.only(start: 20, end: 16),
                  child: Icon(Icons.menu,color: Color(0xff000B90),size: 40),
                )
            ),
            backgroundColor: Colors.white,
            title: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>SearchScreen()));
              },
              child: Container(
                height: 40,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsetsDirectional.symmetric(vertical: 12),
                padding: const EdgeInsetsDirectional.symmetric(vertical: 10, horizontal: 16),
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: const Color(0xffcccccc),width: 1)

                ),
                child: const Row(
                  children: [
                    Icon(Icons.search_outlined,color:  Color(0xffcccccc),size: 20,),
                    SizedBox(width: 8),
                    Text(
                        "Search here...",
                        style: TextStyle(
                          color: Color(0xffcccccc),
                          fontSize:14 ,
                          fontWeight:FontWeight.w400,
                        )
                    )
                  ],
                ),
              ),
            ),
            actions: const [
              Padding(
                padding: EdgeInsets.only(right: 20, left: 16),
                child: CircleAvatar(
                  child: Image(image: AssetImage("assets/icon_image/avater.png"),height: 40,width: 40,),
                ),
              )
            ],
          ),
        ),

        body: SingleChildScrollView(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: LayoutBuilder(builder: (context , constrains) {
              return   Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(width: 1,color: Color(0xffE6E7F4)),
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(8),
                              boxShadow:[ BoxShadow(
                                  color: Color(0xff000000).withOpacity(0.225),
                                  blurRadius: 8,
                                  offset: Offset(0, 1)

                              )]

                          ),
                          width: 106,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 20.0,bottom: 7),
                                  child: Text("Total Car",style: GoogleFonts.poppins(color: Color(0xff000000) ,fontSize:12 ,fontWeight:FontWeight.w500 ),),
                                ),

                                const Padding(
                                  padding: EdgeInsets.only(bottom: 11.0),
                                  child: Text("00",style: TextStyle(color: Color(0xff000B90) ,fontSize:18 ,fontWeight:FontWeight.w500 ),),
                                ),


                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 16,),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(width: 1,color: Color(0xffE6E7F4)),
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(8),
                              boxShadow:[ BoxShadow(
                                  color: Color(0xff000000).withOpacity(0.225),
                                  blurRadius: 8,
                                  offset: Offset(0, 1)
                              )]
                          ),
                          width: 106,
                          child: const Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 20.0,bottom: 7),
                                  child: Text("Active",style: TextStyle(color: Color(0xff000000) ,fontSize:12 ,fontWeight:FontWeight.w500 ),),
                                ),

                                Padding(
                                  padding: EdgeInsets.only(bottom: 11.0),
                                  child: Text("00",style: TextStyle(color: Color(0xff00A991) ,fontSize:18 ,fontWeight:FontWeight.w500 ),),
                                ),


                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 16,),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(width: 1,color: Color(0xffE6E7F4)),
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(8),
                              boxShadow:[ BoxShadow(
                                  color: Color(0xff000000).withOpacity(0.225),
                                  blurRadius: 8,
                                  offset: Offset(0, 1)
                              )]
                          ),
                          width: 106,
                          child: const Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 20.0,bottom: 7),
                                  child: Text("Reserved",style: TextStyle(color: Color(0xff000000) ,fontSize:12 ,fontWeight:FontWeight.w500 ),),
                                ),

                                Padding(
                                  padding: EdgeInsets.only(bottom: 11.0),
                                  child: Text("00",style: TextStyle(color: Color(0xffD7263D) ,fontSize:18 ,fontWeight:FontWeight.w500 ),),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  CustomCarList()
                ],
              );
            })
        ),


      ),
    );
  }
}
