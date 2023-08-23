import 'package:flutter/material.dart';
import 'package:renti_host/view/screens/message/messages/inner_widgets/message_list.dart';
class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}
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
            child: MessageList()
          ) ,
        );
      })
    );
  }
}
