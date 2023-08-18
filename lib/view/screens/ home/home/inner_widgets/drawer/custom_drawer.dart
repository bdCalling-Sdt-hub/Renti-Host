import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:renti_host/view/screens/%20home/home/inner_widgets/alert_box.dart';
import 'package:renti_host/view/screens/add_cars/add_cars/add_cars_screen.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  int selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return  Drawer(
      width: 227,
      backgroundColor: const Color(0xffFFFFFF),
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0,),
        child: Column(
          children: [
             const UserAccountsDrawerHeader(
               accountName: Text(
                 "John Doe",
                 style: TextStyle(
                   color: Color(0xff2E2C2C),
                   fontSize: 18,
                   fontWeight: FontWeight.w500,
                 ),
               ),

               accountEmail: Text(
                 "+5237455372562",
                 style: TextStyle(
                   color: Color(0xff999999),
                   fontSize: 10,
                   fontWeight: FontWeight.w400,
                 ),
               ),
               currentAccountPicture: CircleAvatar(
                   backgroundImage: AssetImage(
                     "assets/icon_image/avater.png",
                   )),
               decoration: BoxDecoration(
                   border: Border(
                     bottom: BorderSide(color: Color(0xffE0DFDF),width: 1)
                   ),
                   color: Color(0xffffffff)),
             ),
             InkWell(
               onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (_)=>AddCarsScreen()));
                 setState(() {
                   selectedItem;
                 });
               },
               child: Container(
                 decoration: BoxDecoration(
                   color:const Color(0xff000B90),
                   borderRadius: BorderRadius.circular(4)
                 ),
                   width: 167,
                 child: const Padding(
                   padding: EdgeInsets.only(left: 8,bottom: 8,top: 8),
                   child: Row(
                     children: [
                       Icon(
                         Icons.add_circle_outline_sharp,
                         size: 18,
                         color: Color(0xff999999),
                       ),
                       SizedBox(
                         width: 16,
                       ),
                       Text(
                         "Add Car",
                         style: TextStyle(color: Color(0xff999999), fontSize: 14),
                       ),
                     ],
                   ),
                 ),
               ),
             ),
            const SizedBox(height: 8,),
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xff000B90),
                  borderRadius: BorderRadius.circular(4)
              ),
              width: 167,
              child: const Padding(
                padding: EdgeInsets.only(left: 8,bottom: 8,top: 8),
                child: Row(
                  children: [
                    Icon(
                      Icons.car_crash_outlined,
                      size: 18,
                      color: Color(0xff999999),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      "Car list",
                      style: TextStyle(color: Color(0xff999999), fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 8,),
            Container(

              decoration: BoxDecoration(
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.circular(4)
              ),
              width: 167,
              child: const Padding(
                padding: EdgeInsets.only(left: 8,bottom: 8,top: 8),
                child: Row(
                  children: [
                    Icon(
                      Icons.person,
                      size: 18,
                      color: Color(0xff999999),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      "User List",
                      style: TextStyle(color: Color(0xff999999), fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 8,),
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.circular(4)
              ),
              width: 167,
              child: const Padding(
                padding: EdgeInsets.only(left: 8,bottom: 8,top: 8),
                child: Row(
                  children: [
                    Icon(
                      Icons.vpn_key,
                      size: 18,
                      color: Color(0xff999999),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      "Rent List",
                      style: TextStyle(color: Color(0xff999999), fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 8,),
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.circular(4)
              ),
              width: 167,
              child: const Padding(
                padding: EdgeInsets.only(left: 8,bottom: 8,top: 8),
                child: Row(
                  children: [
                    Icon(
                      Icons.star_border_outlined,
                      size: 18,
                      color: Color(0xff999999),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      "Review list",
                      style: TextStyle(color: Color(0xff999999), fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 8,),
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.circular(4)
              ),
              width: 167,
              child: const Padding(
                padding: EdgeInsets.only(left: 8,bottom: 8,top: 8),
                child: Row(
                  children: [
                    Icon(
                      Icons.attach_money_outlined,
                      size: 18,
                      color: Color(0xff999999),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      "Income",
                      style: TextStyle(color: Color(0xff999999), fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 8,),
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.circular(4)
              ),
              width: 167,
              child: const Padding(
                padding: EdgeInsets.only(left: 8,bottom: 8,top: 8),
                child: Row(
                  children: [
                    Icon(
                      Icons.kayaking_outlined,
                      size: 18,
                      color: Color(0xff999999),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      "Admin Info",
                      style: TextStyle(color: Color(0xff999999), fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10,),
            const Divider(
              height: 1,
              color: Color(0xffE0DFDF),
            ),
            const SizedBox(height: 6,),
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.circular(4)
              ),
              width: 167,
              child: const Padding(
                padding: EdgeInsets.only(left: 8,bottom: 8,top: 8),
                child: Row(
                  children: [
                    Icon(
                      Icons.settings,
                      size: 18,
                      color: Color(0xff999999),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      "Settings",
                      style: TextStyle(color: Color(0xff999999), fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 8,),
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.circular(4)
              ),
              width: 167,
              child: const Padding(
                padding: EdgeInsets.only(left: 8,bottom: 8,top: 8),
                child: Row(
                  children: [
                    Icon(
                      Icons.question_mark,
                      size: 18,
                      color: Color(0xff999999),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      "How to works",
                      style: TextStyle(color: Color(0xff999999), fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 8,),
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xff000b90),
                  borderRadius: BorderRadius.circular(4)
              ),
              width: 167,
              child: const Padding(
                padding: EdgeInsets.only(left: 8,bottom: 8,top: 8),
                child: Row(
                  children: [
                    Icon(
                      Icons.error_outline,
                      size: 18,
                      color: Color(0xff999999),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      "Terms And ",
                      style: TextStyle(color: Color(0xff999999), fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 8,),
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.circular(4)
              ),
              width: 167,
              child: const Padding(
                padding: EdgeInsets.only(left: 8,bottom: 8,top: 8),
                child: Row(
                  children: [
                    Icon(
                      Icons.headset_mic_rounded,
                      size: 18,
                      color: Color(0xff999999),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      "Support",
                      style: TextStyle(color: Color(0xff999999), fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 8,),
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.circular(4)
              ),
              width: 167,
              child: const Padding(
                padding: EdgeInsets.only(left: 8,bottom: 8,top: 8),
                child: Row(
                  children: [
                    Icon(
                      Icons.error_outline,
                      size: 18,
                      color: Color(0xff999999),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      "About Us",
                      style: TextStyle(color: Color(0xff999999), fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 11,),
            const Divider(
              color: Color(0xffE0DFDF),
              height: 1,
            ),
            const SizedBox(height: 5,),
            Container(
              decoration: BoxDecoration(
               color: const Color(0xffffffff),
               borderRadius: BorderRadius.circular(4)
              ),
               width: 167,
              child: Padding(
                padding: EdgeInsets.only(left: 8,bottom: 8,top: 8),
                child: InkWell(
                  onTap: () {
                    showDialog<void>(
                      context: context,
                      barrierDismissible: false, // user must tap button!
                      builder: (BuildContext context) {
                        return const AlertBox();
                      },
                    );
                  },
                  child: const Row(
                    children: [
                      Icon(
                        Icons.logout,
                        size: 18,
                        color: Color(0xff999999),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        "Log Out",
                        style:
                        TextStyle(color: Color(0xff999999), fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
