import 'package:flutter/material.dart';
import 'package:renti_host/view/screens/%20home/home/inner_widgets/custom_drawer.dart';
import 'package:renti_host/view/screens/%20home/home/inner_widgets/home_add_car.dart';
import 'package:renti_host/view/screens/%20home/home/inner_widgets/home_car_list.dart';
import 'package:renti_host/view/screens/%20home/home/inner_widgets/home_top_section.dart';
import 'package:renti_host/view/screens/%20home/home/inner_widgets/start_end_date.dart';
import 'package:renti_host/view/screens/search/search_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _PendingApprovalScreenState();
}

class _PendingApprovalScreenState extends State<HomeScreen> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        drawer: const CustomDrawer(),
        appBar: PreferredSize(
          preferredSize: Size(MediaQuery.of(context).size.width, 64),
          child: AppBar(
            elevation: 0,
            leading: GestureDetector(
                onTap: () => scaffoldKey.currentState?.openDrawer(),
                child: const Padding(
                  padding: EdgeInsetsDirectional.only(start: 20, end: 16),
                  child: Icon(Icons.menu, color: Color(0xff000B90), size: 40),
                )),
            backgroundColor: Colors.white,
            title: InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => const SearchScreen()));
              },
              child: Container(
                height: 40,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsetsDirectional.symmetric(vertical: 12),
                padding: const EdgeInsetsDirectional.symmetric(
                    vertical: 10, horizontal: 16),
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(8),
                    border:
                        Border.all(color: const Color(0xffcccccc), width: 1)),
                child: const Row(
                  children: [
                    Icon(
                      Icons.search_outlined,
                      color: Color(0xffcccccc),
                      size: 20,
                    ),
                    SizedBox(width: 8),
                    Text("Search here...",
                        style: TextStyle(
                          color: Color(0xffcccccc),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ))
                  ],
                ),
              ),
            ),
            actions: const [
              Padding(
                padding: EdgeInsets.only(right: 20, left: 16),
                child: CircleAvatar(
                  child: Image(
                    image: AssetImage("assets/icon_image/avater.png"),
                    height: 40,
                    width: 40,
                  ),
                ),
              )
            ],
          ),
        ),
        body: SingleChildScrollView(
            padding: const EdgeInsets.only(left: 20, right: 20,top: 24,bottom: 24),
            child: LayoutBuilder(builder: (context, constrains) {
              return   Column(
                children: [

                  //home top section
                  const HomeTopSection(),
                  HomeCarList()
                ],
              );
            })),
      ),
    );
  }
}
