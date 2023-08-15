import 'package:flutter/material.dart';

class InboxScreen extends StatefulWidget {
  const InboxScreen({super.key});

  @override
  State<InboxScreen> createState() => _InboxScreenState();
}

class _InboxScreenState extends State<InboxScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff000B90),
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 64,
        elevation: 0,
        titleSpacing: -8,
        backgroundColor: Color(0xff000B90),
        leading: Icon(Icons.arrow_back_ios_new),
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/images/Avatermohila.png",
              height: 52,
              width: 52,
            ),
            SizedBox(
              width: 12,
            ),
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Bessie Cooper',
                      style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: 18,
                          fontWeight: FontWeight.w500)),
                  SizedBox(
                    height: 11,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.do_not_disturb_on_total_silence_rounded,
                        color: Colors.green,
                        weight: 5,
                        size: 10,
                      ),
                      SizedBox(width: 8),
                      Text(
                        "Active Now",
                        style: TextStyle(
                            color: Color(0xffffffff),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Icon(
              Icons.call,
              color: Color(0xfffffffff),
              size: 24,
            ),
          )
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsetsDirectional.symmetric(vertical:24 ,horizontal:20),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

          ],
        ),
      )
    );
  }
}
