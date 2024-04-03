import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:renti_host/core/helper/shear_preference_helper.dart';
import 'package:renti_host/core/route/app_route.dart';
import 'package:renti_host/service/socket_service.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_icons.dart';
import 'package:renti_host/view/widgets/appbar/custom_appbar.dart';
import 'package:renti_host/view/widgets/image/custom_image.dart';
import 'package:renti_host/view/widgets/popups/common_popup.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/global/api_url_container.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  SocketService socketService = SocketService();
  String hostUid = "";

  List<Chat> allChatList = [];
  List<Participant> participant = [];

  getAllChats() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    hostUid = prefs.getString(SharedPreferenceHelper.userIdKey).toString();
   socketService.connectToSocket();
   socketService.joinRoom(hostUid);
    socketService.fetchAllChats(
        hostId: hostUid,
        didFetchChats: (list) {
          participant.clear();
          if (kDebugMode) {
            print("List =======> ${list.length}");
          }

          list.forEach((element) {
            participant.addAll(element.participants);
            if (kDebugMode) {
              print("Participant =======> ${element.participants.length}");
            }
          });

          setState(() {
            allChatList = list;
          });
        });
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      getAllChats();
    });
    super.initState();
  }

  @override
  void dispose() {
    socketService.socketDispose("all-chats");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print("this is ${allChatList.length}");
    }
    return WillPopScope(
      onWillPop: () async {
        await showDialog(context: context, builder: (context)=> CommonPopUp(
            title: "You sure want to log out?".tr,
            onTapYes: () async {
              final SharedPreferences prefs = await SharedPreferences.getInstance();
              prefs.remove(SharedPreferenceHelper.userIdKey);
              prefs.remove(SharedPreferenceHelper.accessTokenType);
              prefs.remove(SharedPreferenceHelper.userEmailKey);
              prefs.remove(SharedPreferenceHelper.userPhoneNumberKey);
              prefs.remove(SharedPreferenceHelper.userNameKey);
              prefs.remove(SharedPreferenceHelper.accessTokenKey);
              prefs.setBool(SharedPreferenceHelper.rememberMeKey, false);
              Get.offAllNamed(AppRoute.signInScreen);
            },
            onTapNo: () {
              Navigator.of(context).pop();
            }));
        return false;
      },
      child: SafeArea(
        top: true,
        child: Scaffold(
          backgroundColor: AppColors.whiteLight,
          appBar: CustomAppBar(
            appBarContent: CustomText(
                text: "Messages".tr, fontSize: 18, fontWeight: FontWeight.w600),
          ),
          body: participant.isEmpty
              ? Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CustomImage(
                          imageSrc: AppIcons.dataNotFound,
                          imageType: ImageType.png,
                          size: 120),
                      const SizedBox(height: 8),
                      Center(
                        child: CustomText(
                            text: "No Messages Found!".tr,
                            fontSize: 16,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis),
                      ),
                    ],
                  ),
                )
              : SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
                  child: Column(
                    children: List.generate(
                      participant.length,
                      (index) {
                        return Padding(
                                padding: const EdgeInsets.only(bottom: 8),
                                child: GestureDetector(
                                  onTap: () {
                                    Get.toNamed(AppRoute.inboxScreen, arguments: [
                                      participant[index].id,
                                      participant[index].fullName,
                                      "${ApiUrlContainer.imageUrl}/${participant[index].image}",
                                      hostUid
                                    ]);
                                  },
                                  child: Slidable(
                                    endActionPane: ActionPane(
                                      motion: const ScrollMotion(),
                                      children: [
                                        SlidableAction(
                                            onPressed: (v) {
                                              showDialog(
                                                context: context,
                                                builder: (context) {
                                                  return CommonPopUp(
                                                      title: "Delete Message",
                                                      onTapYes: () {},
                                                      onTapNo: () {});
                                                },
                                              );
                                            },
                                            backgroundColor: AppColors.redNormal,
                                            icon: Icons.delete),
                                      ],
                                    ),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      padding: const EdgeInsets.all(16),
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(8),
                                        ),
                                        shadows: const [
                                          BoxShadow(
                                            color: AppColors.shadowColor,
                                            blurRadius: 10,
                                            offset: Offset(0, 1),
                                            spreadRadius: 0,
                                          ),
                                        ],
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 52,
                                            width: 52,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image:
                                                        CachedNetworkImageProvider("${ApiUrlContainer.imageUrl}${participant[index].image.toString()}"))),
                                          ),
                                          const SizedBox(width: 16),
                                          Expanded(
                                            flex: 1,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    //chat.participants[index].role == "user"?
                                                    CustomText(
                                                        text: participant[index]
                                                            .fullName
                                                            .toString(),
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ],
                                                ),
                                                /* CustomText(
                                      text: participant[index]..toString(),
                                      fontSize: 12,
                                      color: AppColors.whiteDark,
                                      textAlign: TextAlign.start,
                                      top: 8,
                                    ),*/
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                      },
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}
