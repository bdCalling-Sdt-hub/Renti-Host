import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:renti_host/view/screens/message/inbox/inbox_screen.dart';
class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}
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

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        centerTitle: false,

        automaticallyImplyLeading: false,
        backgroundColor:const Color(0xffffffff),
        elevation: 0,
        title: const Text("Messages",style: TextStyle(color: Color(0xff2E2C2C),fontSize: 18,fontWeight: FontWeight.w600),
        ),
      ),
      body: LayoutBuilder(builder: (context,constraint){
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsetsDirectional.symmetric(horizontal: 16,vertical: 20),
            child: Column(
              children: List.generate(dataList.length, (index){
                return  GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>InboxScreen()));
                  },
                  child: Card(
                    shadowColor: const Color(0xff000000).withOpacity(0.1),
                    elevation: 20,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsetsDirectional.symmetric(vertical: 20,horizontal: 20),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Image(image: AssetImage("assets/images/Avaterkala.png"),width: 52,height:52 ,),
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
                                                  maxLines: 2,
                                                  style: TextStyle(
                                                      color: Color(0xff00A991),
                                                      fontSize: 10,fontWeight:FontWeight.w400
                                                  ),
                                                )) :
                                            Container(
                                              height: 22,
                                              padding: const EdgeInsets.symmetric(
                                                  horizontal: 12, vertical: 4),
                                              clipBehavior: Clip.antiAlias,
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
                                                  height: 1.40,
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
                );

              } )

            ),
          ) ,
        );
      })
    );
  }
}
