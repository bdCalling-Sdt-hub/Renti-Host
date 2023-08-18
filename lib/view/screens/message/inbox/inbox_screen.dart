import 'package:flutter/material.dart';

class InboxScreen extends StatefulWidget {
  const InboxScreen({super.key});

  @override
  State<InboxScreen> createState() => _InboxScreenState();
}

class _InboxScreenState extends State<InboxScreen> {
  List<ChatMessage> messages = [
    ChatMessage(
        messageContent:
            "Lorem ipsum dolor sit amet consectetur. Fringilla vitae dolor.",
        messageType: "sender"),
    ChatMessage(
        messageContent:
            "Lorem ipsum dolor sit amet\nconsectetur. Enim posuere aenean enim malesuada diam donec augue facilisi.",
        messageType: "receiver"),
    ChatMessage(messageContent: "Hello", messageType: "receiver"),
    ChatMessage(
        messageContent:
            "Lorem ipsum dolor sit amet consectetur. Fringilla vitae dolor.",
        messageType: "sender"),
    ChatMessage(
        messageContent:
            "Lorem ipsum dolor sit amet\nconsectetur. Enim posuere aenean enim malesuada diam donec augue facilisi.",
        messageType: "receiver"),
    ChatMessage(messageContent: "Hello", messageType: "receiver"),
    ChatMessage(
        messageContent:
            "Lorem ipsum dolor sit amet consectetur. Fringilla vitae dolor.",
        messageType: "sender"),
    ChatMessage(
        messageContent:
            "Lorem ipsum dolor sit amet\nconsectetur. Enim posuere aenean enim malesuada diam donec augue facilisi.",
        messageType: "receiver"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        backgroundColor: const Color(0xff000B90),
        appBar: AppBar(
          centerTitle: true,
          toolbarHeight: 64,
          elevation: 0,
          titleSpacing: -8,
          backgroundColor: Color(0xff000B90),
          leading: const Icon(Icons.arrow_back_ios_new),
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "assets/images/Avatermohila.png",
                height: 52,
                width: 52,
              ),
              const SizedBox(
                width: 12,
              ),
              const Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Bessie Cooper',
                        style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontSize: 18,
                            fontWeight: FontWeight.w500)),
                  ],
                ),
              ),
            ],
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 16),
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
          decoration: const ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
            ),
            shadows: [
              BoxShadow(
                color: Color(0x19000000),
                blurRadius: 10,
                offset: Offset(0, -4),
                spreadRadius: 0,
              )
            ],
          ),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Column(
              children: List.generate(messages.length, (index) => Container(
                padding: const EdgeInsets.only(left: 14, right: 14, top: 10, bottom: 10),
                child: Align(
                  alignment: (messages[index].messageType == "sender"
                      ? Alignment.topRight
                      : Alignment.topLeft),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: (messages[index].messageType == "sender"
                          ? Color(0xFF000B90)
                          : Color(0xFFE6E6E6)),
                    ),
                    padding: EdgeInsets.all(16),
                    child: Text(
                      messages[index].messageContent,

                      style: TextStyle(
                        fontSize: 15,
                        color: (messages[index].messageType == "sender"
                            ? Color(0xFFffffff)
                            : Color(0xFF000000)),
                      ),
                    ),
                  ),
                ),
              ))
            )
          ),
        ),
      bottomNavigationBar: AnimatedPadding(
        padding: MediaQuery.of(context).viewInsets,
        duration: const Duration(milliseconds: 100),
        curve: Curves.decelerate,
        child: Container(
          padding: const EdgeInsetsDirectional.symmetric(vertical: 16, horizontal: 16),
          width: MediaQuery.of(context).size.width,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 0.50, color: Color(0xFFE6E7F4)),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  flex: 2,
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(24)
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(24)
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(24)),
                    ),
                  )
              ),
              IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.send, color: Colors.black, size: 24)
              )
            ],
          ),
        ),
      ),
    );

  }
}

class ChatMessage {
  String messageContent;
  String messageType;
  ChatMessage({required this.messageContent, required this.messageType});
}
