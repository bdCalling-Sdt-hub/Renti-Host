import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:renti_host/service/socket_service.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/device_utils.dart';
import 'package:renti_host/view/widgets/appbar/custom_appbar.dart';
import 'package:renti_host/view/widgets/container/custon_container.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';

class InboxScreen extends StatefulWidget {
  const InboxScreen({super.key});

  @override
  State<InboxScreen> createState() => _InboxScreenState();
}

class _InboxScreenState extends State<InboxScreen> {
  SocketService socketService = SocketService();
  int index = 0;
  String hostUid = "";
  String userUid = "";
  String name = "";
  String image = "";
  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    userUid = Get.arguments[0];
    name = Get.arguments[1];
    image = Get.arguments[2];
    hostUid = Get.arguments[3];

    if (kDebugMode) {
      print(hostUid);
    }
    if (kDebugMode) {
      print(userUid);
    }

    final socketService = Get.find<SocketService>();
   // socketService.connectToSocket();
   // socketService.joinRoom(hostUid);
    socketService.joinChat(hostUid);
    socketService.addNewChat({
      "participants": [hostUid, userUid],
    }, hostUid);
    DeviceUtils.screenUtils();
    super.initState();
  }

  @override
  void dispose() {
   /* socketService.socketDispose("new-chat");
    socketService.socketDispose("all-messages");*/
    DeviceUtils.screenUtils();

    super.dispose();
  }

  final TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        extendBody: true,
        backgroundColor: AppColors.whiteLight1,
        appBar: CustomAppBar(
          appBarBgColor: AppColors.blueNormal,
          bottom: 20,
          appBarHeight: 80,
          bottomLeft: 16,
          appBarContent: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () => Get.back(),
                    icon: const Icon(Icons.arrow_back_ios_rounded, size: 18, color: AppColors.whiteLight),
                  ),
                  Container(
                    height: 52,
                    width: 52,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(image: CachedNetworkImageProvider(image))),
                  ),
                  CustomText(
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      text: name,
                      fontSize: 18,left: 4,
                      fontWeight: FontWeight.w500,
                      color: AppColors.whiteLight)
                ],
              ),
              /*const SizedBox(width: 24),
              const Icon(Icons.phone, size: 24, color: AppColors.whiteLight),*/
            ],
          ),
        ),
        body: GetBuilder<SocketService>(
          builder: (socketService) {
            return socketService.messageList.isEmpty
                ? Center(
                    child: CustomText(text: "No Data Found!".tr,fontSize: 16,maxLines: 1,overflow: TextOverflow.ellipsis))
                : SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    padding: const EdgeInsets.only(top: 24, bottom: 100),
                    child: CustomContainer(
                      child: ListView.builder(
                        //controller: scrollController,
                        itemCount: socketService.messageList.length,
                        physics: const BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Align(
                            alignment: socketService.messageList[index]["sender"]["role"] != "host"
                                ? Alignment.topLeft
                                : Alignment.topRight,
                            child: Container(
                              margin: const EdgeInsetsDirectional.only(bottom: 12),
                              padding: const EdgeInsetsDirectional.symmetric(vertical: 16, horizontal: 12),
                              decoration: BoxDecoration(
                                borderRadius: socketService.messageList[index]["sender"]["role"] != "host"
                                    ? const BorderRadius.only(
                                        topLeft: Radius.circular(12),
                                        topRight: Radius.circular(12),
                                        bottomRight: Radius.circular(12))
                                    : const BorderRadius.only(
                                        topLeft: Radius.circular(12),
                                        topRight: Radius.circular(12),
                                        bottomLeft: Radius.circular(12)),
                                color: socketService.messageList[index]["sender"]["role"] != "host"
                                    ? AppColors.blueLight
                                    : AppColors.blueNormal,
                              ),
                              child: Text(
                                socketService.messageList[index]["message"],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.raleway(
                                    color: socketService.messageList[index]["sender"]["role"] != "host"
                                            ? AppColors.blueNormal
                                            : AppColors.whiteLight,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  );
          },
        ),
        bottomNavigationBar: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: AnimatedPadding(
            padding: MediaQuery.of(context).viewInsets,
            duration: const Duration(milliseconds: 100),
            curve: Curves.decelerate,
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsetsDirectional.symmetric(
                  horizontal: 20, vertical: 24),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16)),
                color: AppColors.whiteLight,
                boxShadow: [
                  BoxShadow(
                    color: AppColors.blackNormal.withOpacity(0.1),
                    offset: const Offset(2, 2),
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TextFormField(
                      cursorColor: AppColors.blackNormal,
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
                      textAlign: TextAlign.left,
                      textInputAction: TextInputAction.done,
                      controller: messageController,
                      //maxLines: messageController.text.isEmpty? 1 : 5,
                      style: GoogleFonts.raleway(
                          color: AppColors.blackNormal,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsetsDirectional.only(start: 12, end: 12, top: 12, bottom: 12),
                        fillColor: Colors.transparent,
                        filled: true,
                        hintText: "Type message".tr,
                        hintStyle: GoogleFonts.raleway(
                            color: AppColors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                                color: AppColors.black.withOpacity(0.5))),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                                color: AppColors.black.withOpacity(0.5))),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                                color: AppColors.black.withOpacity(0.5))),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  GestureDetector(
                    onTap: () {
                      if (messageController.text != null &&
                          messageController.text != "" &&
                          messageController.text.isNotEmpty) {
                        /*scrollController.animateTo(
                            scrollController.position.maxScrollExtent,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeOut);*/
                        Get.find<SocketService>().addNewMessage(
                            messageController.text,
                            hostUid,
                            Get.find<SocketService>().chatId);
                      }
                      messageController.text = "";
                    },
                    child: const Icon(Icons.send, color: AppColors.blueNormal, size: 20),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Message {
  final String messageContent;
  final String messageType; // "sender" or "receiver"

  Message({required this.messageContent, required this.messageType});
}
