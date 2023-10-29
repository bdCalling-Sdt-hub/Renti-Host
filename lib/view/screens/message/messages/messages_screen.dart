import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:renti_host/service/socket_service.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_static_strings.dart';
import 'package:renti_host/view/screens/message/messages/inner_widgets/message_list.dart';
import 'package:renti_host/view/widgets/appbar/custom_appbar.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {

  SocketService socketService = SocketService();

  @override
  void initState() {
    socketService.connectToSocket();

    //TODO-
    /*socketService.joinRoom("651551cf1ae339b4d6643733");
    socketService.addNewChat(
        {
          "participants": [
            "651551cf1ae339b4d6643733",
            "653117d450aadb8b4f822fc1"
          ]
        },
        "651551cf1ae339b4d6643733"
    );
    socketService.joinChat("653351d670ad16ac98ea1a7f");*/
    socketService.joinRoom("651551cf1ae339b4d6643733");
    socketService.getAllChats("651551cf1ae339b4d6643733");
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        backgroundColor: AppColors.whiteLight,
        appBar: CustomAppBar(
          appBarContent: CustomText(
              text: "Messages".tr,
              fontSize: 18,
              fontWeight: FontWeight.w600),
        ),
        body: LayoutBuilder(
          builder: (context, constraint) {
            return SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
              child: MessageList(),
            );
          },
        ),
      ),
    );
  }
}
