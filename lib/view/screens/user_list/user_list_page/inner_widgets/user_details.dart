import 'package:flutter/material.dart';
import 'package:renti_host/view/screens/user_list/user_list_page/inner_widgets/complete_button.dart';
import 'package:renti_host/view/screens/user_list/user_list_page/inner_widgets/dialog_box.dart';
import 'package:renti_host/view/screens/user_list/user_list_page/inner_widgets/reserved_button.dart';

class UserDetails extends StatefulWidget {
  const UserDetails({super.key});

  @override
  State<UserDetails> createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  List<Map<String, String>> dataList = [
    {
      "userName" : "Humayun",
      "userPic" : "assets/images/avater1.png",
      "ratingImage" : "assets/images/Vector.png",
      "rating" : "2.5",
      "status": "Complete",
    },
    {
      "userName" : "Piyash",
      "userPic" : "assets/images/avater1.png",
      "ratingImage" : "assets/images/Vector.png",
      "rating" : "2.5",
      "status": "Reserved",
    },
    {
      "userName" : "Nadim",
      "userPic" : "assets/images/avater1.png",
      "ratingImage" : "assets/images/Vector.png",
      "rating" : "2.5",
      "status": "Complete",
    },
    {
      "userName" : "Jubayed",
      "userPic" : "assets/images/avater1.png",
      "ratingImage" : "assets/images/Vector.png",
      "rating" : "2.5",
      "status": "Reserved",
    },
    {
      "userName" : "Humayun",
      "userPic" : "assets/images/avater1.png",
      "ratingImage" : "assets/images/Vector.png",
      "rating" : "2.5",
      "status": "Complete",
    },
    {
      "userName" : "Hasan",
      "userPic" : "assets/images/avater1.png",
      "ratingImage" : "assets/images/Vector.png",
      "rating" : "2.5",
      "status": "Reserved",
    },

  ];

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: List.generate(
          dataList.length, (index){
            return Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: GestureDetector(
                onTap: () => showDialog(
                    context: context,
                    builder: (BuildContext context) => const Padding(
                      padding:  EdgeInsetsDirectional.symmetric(horizontal: 20),
                      child: DialogBox(),

                    )),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  // height: 86,
                  padding: const EdgeInsetsDirectional.symmetric(
                      vertical: 8, horizontal: 16),
                  decoration: ShapeDecoration(
                    color: const Color(0xffffffff),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    shadows: [
                      BoxShadow(
                        color: const Color(0xff000000).withOpacity(0.01),
                        blurRadius: 10,
                      )
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 3,
                        child: Row(
                          children: [
                            Container(
                              width: 70,
                              height: 70,
                              decoration:   ShapeDecoration(
                                image: DecorationImage(
                                  image: AssetImage(

                                     dataList[index]["userPic"]!

                                ),
                                  fit: BoxFit.fill,

                              ),
                                shape: OvalBorder(),
                            )),
                            const SizedBox(width: 16),
                             Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: [
                                Text(
                                  dataList[index]["userName"]!,
                                  style: const TextStyle(
                                    color: Color(0xFF2E2C2C),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    height: 1.40,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  children: [
                                     const Image(
                                        image: AssetImage(
                                            "assets/images/Vector.png"
                                            ),
                                        width: 12,
                                        height: 12),
                                    const SizedBox(width: 8,),
                                    Text(dataList[index][("rating")]!)
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 41,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment:
                        CrossAxisAlignment.center,
                        children: [
                          dataList[index]["status"]=="Reserved"? const CompleteContainer():const ReservedContainer(),
                          const SizedBox(height: 8),
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.center,
                            crossAxisAlignment:
                            CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 24,
                                height: 24,
                                decoration: ShapeDecoration(
                                  color: const Color(0xffE6E7F4),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.circular(4)),
                                ),
                                child: const Icon(
                                  Icons.call,
                                  size: 15,
                                  color: Color(0xff000b90),
                                ),
                              ),
                              const SizedBox(width: 16),
                              Container(
                                width: 24,
                                height: 24,
                                decoration: ShapeDecoration(
                                  color: const Color(0xFFE6E7F4),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.circular(4)),
                                ),
                                child: const Icon(Icons.message,
                                    size: 15,
                                    color: Color(0xff000b90)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
      }
    ),
    );
  }
}
