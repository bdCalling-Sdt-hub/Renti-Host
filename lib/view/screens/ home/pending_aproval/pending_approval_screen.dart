import 'package:flutter/material.dart';

class PendingApprovalScreen extends StatefulWidget {
  const PendingApprovalScreen({super.key});

  @override
  State<PendingApprovalScreen> createState() => _PendingApprovalScreenState();
}

class _PendingApprovalScreenState extends State<PendingApprovalScreen> {

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        drawer: Drawer(
          backgroundColor: Colors.grey,
        ),

        appBar: AppBar(
               elevation: 0,
              leading: GestureDetector(
                onTap: () => scaffoldKey.currentState?.openDrawer(),
                  child: Icon(Icons.menu,color: Color(0xff000B90),size: 40)
              ),
              backgroundColor: Colors.white,

            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(

                  height: 40,
                  width: 258,
                  decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Color(0xffcccccc),width: 1)

                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Row(
                      children: [Icon(Icons.search_outlined,color:  Color(0xffcccccc),size: 20,),
                      Text("Search here...",style: TextStyle(color: Color(0xffcccccc),fontSize:14 ,fontWeight:FontWeight.w400 ),)
                      ],
                    ),
                  ),
                ),
                const CircleAvatar(
                  child: Image(image: AssetImage("assets/icon_image/avater.png"),height: 40,width: 40,),
                )
              ],
            ),
        ),

        body: Padding(
          padding: const EdgeInsets.only(left: 20.0,top: 12,right: 20),
          child: LayoutBuilder(builder: (context , constrains){
            return Column(children:
            [
              Row(
                children: [
                  Container(
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
                            child: Text("Total Car",style: TextStyle(color: Color(0xff000000) ,fontSize:12 ,fontWeight:FontWeight.w500 ),),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(bottom: 11.0),
                            child: Text("00",style: TextStyle(color: Color(0xff000B90) ,fontSize:18 ,fontWeight:FontWeight.w500 ),),
                          ),


                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 16,),
                  Container(
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
                            child: Text("Active",style: TextStyle(color: Color(0xff000000) ,fontSize:12 ,fontWeight:FontWeight.w500 ),),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(bottom: 11.0),
                            child: Text("00",style: TextStyle(color: Color(0xff00A991) ,fontSize:18 ,fontWeight:FontWeight.w500 ),),
                          ),


                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 16,),
                  Container(
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
                            child: Text("Active",style: TextStyle(color: Color(0xff000000) ,fontSize:12 ,fontWeight:FontWeight.w500 ),),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(bottom: 11.0),
                            child: Text("00",style: TextStyle(color: Color(0xff00A991) ,fontSize:18 ,fontWeight:FontWeight.w500 ),),
                          ),


                        ],
                      ),
                    ),
                  ),
                ],
              ),
           SizedBox(height: 87,),
           Image(image: AssetImage("assets/images/bro.png"),height: 220,width: 350,),

              SizedBox(height: 49,),
              TextButton(onPressed: (){}, child: Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  
                  Icon(Icons.add_circle_outline_sharp,size: 24,color: Color(0xff000B90),),

                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text("Add New Car",style: TextStyle(color: Color(0xff000B90),fontWeight: FontWeight.w600,fontSize: 18),),
                  )
                ],
              ))
            ],


            );
          })
        ),

      ),
    );
  }
}
