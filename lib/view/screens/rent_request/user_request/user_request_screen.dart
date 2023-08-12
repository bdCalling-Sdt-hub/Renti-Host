import 'package:flutter/material.dart';

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
          backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            "Users Request",
            style: TextStyle(color: Color(0xff2E2C2C)),
          )),
       body: Column(
         // crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Padding(
             padding: EdgeInsets.all(33.0),
             child: SizedBox(
               width: 350,
               height: 200,
               child: Container(
                 width: 350,
                 height: 200,
                 decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(8.0),
                      color: Colors.white,
                     boxShadow:  [
                       BoxShadow(
                           color: Colors.black.withOpacity(0.1),
                           blurRadius: 10,
                          offset: Offset(1,0),
                         spreadRadius: 0

                       )
                     ]
                 ),
                 child: Column(
                   children: [
                     Padding(
                       padding: const EdgeInsetsDirectional.only(start: 16,top: 16),
                       child: Row(
                         children: [
                           Image(image: AssetImage("assets/images/Avater.png"),width: 50,height: 50,),
                           ],
                       ),
                     )
                   ],
                 ),
               ),
             ),
           )
         ],
       ),
    ));
  }
}
