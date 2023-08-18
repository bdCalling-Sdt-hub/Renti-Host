import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:renti_host/view/screens/%20home/home/inner_widgets/drawer/custom_drawer.dart';
import 'package:renti_host/view/screens/%20home/home/inner_widgets/home_add_car.dart';
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
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: LayoutBuilder(builder: (context, constrains) {
              return Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1, color: Color(0xffE6E7F4)),
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0xff000000).withOpacity(0.225),
                                    blurRadius: 8,
                                    offset: Offset(0, 1))
                              ]),
                          width: 106,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 20.0, bottom: 7),
                                  child: Text(
                                    "Total Car",
                                    style: GoogleFonts.poppins(
                                        color: Color(0xff000000),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(bottom: 11.0),
                                  child: Text(
                                    "00",
                                    style: TextStyle(
                                        color: Color(0xff000B90),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1, color: Color(0xffE6E7F4)),
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0xff000000).withOpacity(0.225),
                                    blurRadius: 8,
                                    offset: Offset(0, 1))
                              ]),
                          width: 106,
                          child: const Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 20.0, bottom: 7),
                                  child: Text(
                                    "Active",
                                    style: TextStyle(
                                        color: Color(0xff000000),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 11.0),
                                  child: Text(
                                    "00",
                                    style: TextStyle(
                                        color: Color(0xff00A991),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1, color: Color(0xffE6E7F4)),
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0xff000000).withOpacity(0.225),
                                    blurRadius: 8,
                                    offset: Offset(0, 1))
                              ]),
                          width: 106,
                          child: const Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 20.0, bottom: 7),
                                  child: Text(
                                    "Reserved",
                                    style: TextStyle(
                                        color: Color(0xff000000),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 11.0),
                                  child: Text(
                                    "00",
                                    style: TextStyle(
                                        color: Color(0xffD7263D),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 88,),
                  const HomeAddCar()
                ],
              );
            })),
      ),
    );
  }
}
