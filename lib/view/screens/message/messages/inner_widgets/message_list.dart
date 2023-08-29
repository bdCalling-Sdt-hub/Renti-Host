import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:renti_host/view/screens/message/inbox/inbox_screen.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class MessageList extends StatelessWidget {
   MessageList({super.key});

  List<Map<String, String>> dataList = [
    {
      "image": "assets/images/Carphoto.png",
      "document": 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium',
      "status": "Reserved",
    },
    {
      "image": "assets/images/Carphoto.png",
      "document": 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium',
      "status": "Complete",
    },
    {
      "image": "assets/images/Carphoto.png",
      "document": 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium',
      "status": "Reserved",
    },
    {
      "image": "assets/images/Carphoto.png",
      "document": 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium',
      "status": "Complete",
    },
    {
      "image": "assets/images/Carphoto.png",
      "document": 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium',
      "status": "Complete",
    },
    {
      "image": "assets/images/Carphoto.png",
      "document": 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium',
      "status": "Reserved",
    },
    {
      "image": "assets/images/Carphoto.png",
      "document": 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium',
      "status": "Complete",
    },
    {
      "image": "assets/images/Carphoto.png",
      "document": 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium',
      "status": "Reserved",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
        children: List.generate(dataList.length, (index){
          return  GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (_)=>const InboxScreen()));
            },
            child: Slidable(
              endActionPane: ActionPane(motion: ScrollMotion() ,
                  children: [
                SlidableAction(
                onPressed: (v){
                showDialog(context: context, builder: (context){
                  return  AlertDialog(
                    title: Column(
                      children: [
                        const Text("You sure want to delete message?",style: TextStyle(
                          color: Color(0xFF2E2C2C),
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                         )
                        ),

                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 16),
                          child: Divider(
                            height: 1,
                            color: Color(0xffE0DFDF),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: InkWell(
                                onTap: (){
                                },
                                child: Container(
                                  padding: EdgeInsetsDirectional.symmetric(vertical: 12),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: const Color(0xffFBE9EC),
                                      borderRadius: BorderRadius.circular(8)
                                  ),
                                  child: const Text("No", textAlign: TextAlign.center, style: TextStyle(color: Color(0xffD7263D),fontSize: 18,fontWeight:FontWeight.w600)),
                                ),
                              ),
                            ),
                            const SizedBox(width: 8,),
                            Expanded(
                              child: InkWell(
                                onTap: (){
                                },
                                child: Container(
                                  //alignment: Alignment.bottomRight,
                                  padding: EdgeInsetsDirectional.symmetric(vertical: 12),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        color: const Color(0xff000B90),
                                        borderRadius: BorderRadius.circular(8)
                                    ),
                                    child: const Text("Yes", textAlign: TextAlign.center, style: TextStyle(color: Colors.white,fontSize: 18,fontWeight:FontWeight.w600))
                                ),
                              ),
                            ),
                          ],
                        ),


                      ],
                    )
                    
                  );
                }
                );
                },



                backgroundColor: const Color(0xFFD7263D),
                icon : CupertinoIcons.delete,
              ),
              ]),
              child: Card(
                shadowColor: const Color(0xff000000).withOpacity(0.1),
                elevation: 10,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsetsDirectional.symmetric(vertical: 20,horizontal: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Image(
                            image: AssetImage("assets/images/Avaterkala.png"),width: 52,height:52 ,),
                          const SizedBox(width: 8,),
                          Expanded(
                              flex: 1,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children:  [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text("John Doe",style: TextStyle(color: Color(0xff2E2C2C),fontSize: 18,fontWeight: FontWeight.w500)),
                                        dataList[index]["status"] == "Reserved"
                                            ? Container(
                                            padding: const EdgeInsetsDirectional.symmetric(vertical: 4, horizontal: 12),
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                                color: const Color(0xffE6F6F4),
                                                borderRadius: BorderRadius.circular(4)
                                            ),
                                            child: const Text(
                                              "Complete",
                                              style: TextStyle(
                                                  color: Color(0xff00A991),
                                                  fontSize: 10,fontWeight:FontWeight.w400
                                              ),
                                            )) :
                                        Container(
                                          height: 22,
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 12, vertical: 4),
                                          decoration: ShapeDecoration(
                                            color: const Color(0xFFE6F6F4),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                BorderRadius.circular(4)),
                                          ),
                                          child: const Text(
                                            'Reserved',
                                            style: TextStyle(
                                              color: Color(0xFFD7263D),
                                              fontSize: 10,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    const SizedBox(height: 8,),
                                    const Expanded(
                                      flex: 0,
                                      child: Text(
                                          "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium",
                                          maxLines: 2,
                                          style: TextStyle(
                                              color: Color(0xff737373),
                                              fontSize: 14,fontWeight:FontWeight.w400
                                          )
                                      ),
                                    ),
                                  ]
                              )
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );

        } )

    );
  }
}
