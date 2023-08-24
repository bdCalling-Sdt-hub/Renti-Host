import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:renti_host/view/screens/%20home/home/inner_widgets/alert_box.dart';
import 'package:renti_host/view/screens/add_cars/add_cars/add_cars_screen.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {

  bool changeColor = false;
  @override
  Widget build(BuildContext context) {
    return  Drawer(
      width: 230,
      backgroundColor: const Color(0xffFFFFFF),
      child: SingleChildScrollView(
        padding:  EdgeInsetsDirectional.only(start: 20,end: 20),
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
                 //Navigator.push(context, MaterialPageRoute(builder: (_)=>AddCarsScreen()));
                 setState(() {
                  changeColor = !changeColor;
                 });
               },
               child: Container(
                 decoration: BoxDecoration(
                   color:changeColor ? const Color(0xffffffff):const Color(0xff000B90),
                   borderRadius: BorderRadius.circular(4)
                 ),
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
            InkWell(
              onTap: (){
                setState(() {
                  changeColor = !changeColor;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                    color:changeColor ? const Color(0xffffffff):const Color(0xff000B90),
                    borderRadius: BorderRadius.circular(4)
                ),

                child: const Padding(
                  padding: EdgeInsets.only(left: 8,bottom: 8,top: 8),
                  child: Row(
                    children: [
                      Icon(
                        Icons.directions_car_filled_outlined,
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
            ),
            const SizedBox(height: 8,),
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.circular(4)
              ),

              child: const Padding(
                padding: EdgeInsets.only(left: 8,bottom: 8,top: 8),
                child: Row(
                  children: [
                    Icon(
                      Icons.person_outline_outlined,
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

              child: const Padding(
                padding: EdgeInsets.only(left: 8,bottom: 8,top: 8),
                child: Row(
                  children: [
                    Icon(
                      Icons.car_rental_outlined,
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

              child:  Padding(
                padding: const EdgeInsets.only(left: 8,bottom: 8,top: 8),
                child: Row(
                  children: [
                    SvgPicture.asset("assets/icon_image/income_icon.svg"),
                    const SizedBox(
                      width: 16,
                    ),
                    const Text(
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
              child:    Padding(
                padding: const EdgeInsets.only(left: 8,bottom: 8,top: 8),
                child: Row(
                  children: [
                    SvgPicture.asset("assets/icon_image/Bells.svg"),
                    const SizedBox(width: 16,),
                    const Text(
                      "Notifications",
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

              child:  Padding(
                padding: const EdgeInsets.only(left: 8,bottom: 8,top: 8),
                child: Row(
                  children: [
                    SvgPicture.asset("assets/icon_image/admin_info.svg"),
                    const SizedBox(
                      width: 16,
                    ),
                    const Text(
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

              child:  Padding(
                padding: const EdgeInsets.only(left: 8,bottom: 8,top: 8),
                child: Row(
                  children: [
                   SvgPicture.asset("assets/icon_image/questions.svg"),
                    const SizedBox(
                      width: 16,
                    ),
                    const Text(
                      "How to works",
                      style: TextStyle(color: Color(0xff999999), fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 8,),
            FittedBox(
              child: Container(
                decoration: BoxDecoration(
                    color: const Color(0xff000b90),
                    borderRadius: BorderRadius.circular(4)
                ),

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
                        "Terms And Conditions",
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
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.circular(4)
              ),

              child:  Padding(
                padding: EdgeInsets.only(left: 8,bottom: 8,top: 8),
                child: Row(
                  children: [
                    SvgPicture.asset("assets/icon_image/support.svg"),
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

              child: const Padding(
                padding: EdgeInsets.only(left: 8,bottom: 8,top: 8),
                child: Row(
                  children: [
                    Icon(
                      Icons.info_outline,
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

              child: Padding(
                padding: const EdgeInsets.only(left: 8,bottom: 8,top: 8),
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
                        Icons.login,
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
