import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:renti_host/service/socket_service.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_icons.dart';
import 'package:renti_host/utils/app_images.dart';
import 'package:renti_host/utils/app_static_strings.dart';
import 'package:renti_host/view/screens/profile/profile_screen/profile_model/profile_model.dart';
import 'package:renti_host/view/widgets/appbar/custom_appbar.dart';
import 'package:renti_host/view/widgets/container/custon_container.dart';
import 'package:renti_host/view/widgets/image/custom_image.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';
import 'package:renti_host/view/widgets/textfield/custom_textfield.dart';

class InboxScreen extends StatefulWidget {
  const InboxScreen({super.key});

  @override
  State<InboxScreen> createState() => _InboxScreenState();
}

class _InboxScreenState extends State<InboxScreen> {

  TextEditingController messageController = TextEditingController();
  /*List<ChatMessage> allMessages = [];
  SocketService socketService = SocketService();

  ProfileModel profileModel = ProfileModel();

  hostMsg({required String hostUid, required String userUid}) {
    socketService.connectToSocket();
    socketService.joinRoom(hostUid);
    socketService.addNewChat({"participants": [userUid, hostUid]}, hostUid);
    socketService.joinChat(hostUid);
    // socketService.addNewMessage("Hiii", hostUid, hostUid);
    socketService.getAllChats(hostUid);
  }

  userMsg({required String hostUid, required String userUid}) {
    socketService.connectToSocket();
    socketService.joinRoom(userUid);
    socketService.addNewChat({
      "participants": [hostUid, userUid],
    }, hostUid);
    socketService.joinChat(userUid);
    // socketService.addNewMessage("Hiii", userUid, userUid);
    socketService.getAllChats(userUid);
  }

  @override
  void initState() {
    socketService.connectToSocket();

    //TODO-
    socketService.joinRoom("651551cf1ae339b4d6643733");
    socketService.addNewChat(
        {
          "participants": [
            "651551cf1ae339b4d6643733",
            "653117d450aadb8b4f822fc1"
          ]
        },
        "651551cf1ae339b4d6643733"
    );
    socketService.joinChat("653351d670ad16ac98ea1a7f");
    socketService.addNewMessage("Hello", "651551cf1ae339b4d6643733", "653117d450aadb8b4f822fc1");
    socketService.getAllChats("651551cf1ae339b4d6643733");
    super.initState();
  }*/

  //BookingListModel bookingListModel = BookingListModel();

  int index = 0;
  String hostUid = "";
  String userUid = "";

  @override
  void initState() {
    //bookingListModel = Get.arguments[0];
    index = Get.arguments[1];
    hostUid = "653117d450aadb8b4f822fc1";
    userUid = "651551cf1ae339b4d6643733";
    final socketService = Get.find<SocketService>();
    socketService.joinRoom(userUid);
    socketService.addNewChat({
      "participants": [userUid, hostUid],
    }, userUid);
    //DeviceUtils.innerUtils();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }


  List<ChatMessage> messages = [
    ChatMessage(
        messageContent: "Lorem ipsum dolor sit amet consectetur. Fringilla vitae dolor.",
        messageType: "sender"),
    ChatMessage(
        messageContent: "Lorem ipsum dolor sit amet\nconsectetur. Enim posuere aenean enim malesuada diam donec augue facilisi.",
        messageType: "receiver"),
    ChatMessage(messageContent: "Hello", messageType: "receiver"),
    ChatMessage(
        messageContent: "Lorem ipsum dolor sit amet consectetur. Fringilla vitae dolor.",
        messageType: "sender"),
    ChatMessage(
        messageContent: "Lorem ipsum dolor sit amet\nconsectetur. Enim posuere aenean enim malesuada diam donec augue facilisi.",
        messageType: "receiver"),
    ChatMessage(messageContent: "Hello", messageType: "receiver"),
    ChatMessage(
        messageContent: "Lorem ipsum dolor sit amet consectetur. Fringilla vitae dolor.",
        messageType: "sender"),
    ChatMessage(
        messageContent: "Lorem ipsum dolor sit amet\nconsectetur. Enim posuere aenean enim malesuada diam donec augue facilisi.",
        messageType: "receiver"),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        extendBody: true,
        backgroundColor: AppColors.blueNormal,
        appBar: CustomAppBar(
          appBarContent: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () => Get.back(),
                    child: const Icon(Icons.arrow_back_ios_rounded,
                        size: 18, color: AppColors.whiteLight),
                  ),
                  Container(
                    height: 52,
                    width: 52,
                    margin: const EdgeInsets.only(left: 8),
                    decoration: const BoxDecoration(shape: BoxShape.circle),
                    child: const CustomImage(
                        imageSrc: AppImages.userImage,
                        imageType: ImageType.png,
                        size: 52),
                  ),
                  const CustomText(
                      text: AppStaticStrings.bessieCooper,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: AppColors.whiteLight)
                ],
              ),
              const Icon(Icons.phone, size: 24, color: AppColors.whiteLight)
            ],
          ),
        ),
        body: CustomContainer(
          radiusTopLeft: 16,
          radiusTopRight: 16,
          paddingVertical: 0,
          paddingHorizontal: 0,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.only(top: 24, bottom: 100),
            child: Column(
              children: List.generate(
                messages.length,
                (index) => Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4)
                  ),
                  padding: const EdgeInsets.only(
                    left: 16,
                    right: 16,
                    top: 16,
                  ),
                  child: Align(
                    alignment: (messages[index].messageType == "sender"
                        ? Alignment.topRight
                        : Alignment.topLeft),
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      width: MediaQuery.of(context).size.width / 1.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: (messages[index].messageType == "sender"
                            ? AppColors.blueNormal
                            : AppColors.whiteNormalHover),
                      ),
                      child: CustomText(
                        textAlign: TextAlign.start,
                          text: messages[index].messageContent,
                          color: messages[index].messageType == "sender"
                              ? AppColors.whiteLight
                              : AppColors.blackNormal),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: AnimatedPadding(
          padding: MediaQuery.of(context).viewInsets,
          duration: const Duration(milliseconds: 100),
          curve: Curves.decelerate,
          child: Container(
            padding: const EdgeInsetsDirectional.symmetric(
                vertical: 16, horizontal: 20),
            width: MediaQuery.of(context).size.width,
            decoration: const ShapeDecoration(
              color: AppColors.whiteLight,
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 0.50, color: AppColors.whiteLight),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    height: 52,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AppColors.whiteLight,
                      border: Border.all(
                          color: AppColors.whiteNormalActive,
                          style: BorderStyle.solid,
                          width: 1.0,
                          strokeAlign: 1),
                    ),
                    child: CustomTextField(
                      textInputAction: TextInputAction.done,
                      fieldBorderColor: AppColors.whiteLight,
                      hintText: "Enter your address".tr,
                      hintStyle: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.whiteNormalActive),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                GestureDetector(
                  onTap: () {},
                  child:
                      const CustomImage(imageSrc: AppIcons.sendIcon, size: 24),
                ),
              ],
            ),
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
