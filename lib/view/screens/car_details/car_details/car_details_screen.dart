import 'package:flutter/material.dart';
import 'package:renti_host/view/screens/car_details/car_details/inner_wigdets/active_documents.dart';
import 'package:renti_host/view/screens/car_details/car_details/inner_wigdets/custom_alert_box.dart';
import 'package:renti_host/view/screens/car_details/car_details/inner_wigdets/reserved_details.dart';

class CarDetailsScreen extends StatefulWidget {
  const CarDetailsScreen({super.key});

  @override
  State<CarDetailsScreen> createState() => _CarDetailsScreenState();
}

class _CarDetailsScreenState extends State<CarDetailsScreen> {
  List documentsName = ["Circulation card","Environmental  verification hologram","REPUVE","Car insurance policy","Car License",];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back_ios_new,
          color: Color(0xff2E2C2C),
          size: 18,
        ),
        titleSpacing: -8,
        title: const Text(
          "Car Details",
          style: TextStyle(
            color: Color(0xff2E2C2C),
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          PopupMenuButton(
              color: Color(0xffffffff),
              icon: const Icon(
                Icons.more_vert_outlined,
                color: Colors.black,
              ),
              elevation: 1,
              position: PopupMenuPosition.under,
              itemBuilder: (context) => [
                    const PopupMenuItem(
                        child: Row(
                      children: [
                        Icon(
                          Icons.note_alt_rounded,
                          size: 20,
                          color: Color(0xff2E2C2C),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Edit Car",
                          style: TextStyle(
                              color: Color(0xff2E2C2C),
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    )),
                    PopupMenuItem(
                      child: InkWell(
                        onTap: () {
                          showDialog<void>(
                            context: context,
                            barrierDismissible: false, // user must tap button!
                            builder: (BuildContext context) {
                              return const CustomAlertBox2();
                            },
                          );
                        },
                        child: const Row(
                          children: [
                            Icon(
                              Icons.delete,
                              size: 20,
                              color: Color(0xffD7263D),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Delete Car",
                              style: TextStyle(
                                  color: Color(0xffD7263D),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]),
          // Icon(Icons.more_vert_outlined,color: Colors.black,)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              GridView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                      mainAxisExtent: 72,
                      crossAxisCount: 2,
                     childAspectRatio: MediaQuery.of(context).size.width,

                  ),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 72,
                      width: 170,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image:  const DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("assets/images/black_car.png"))),
                    );
                  }),
                 const SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Toyota Harrier",style: TextStyle(color: Color(0xff000B90) ,fontSize: 18,fontWeight:FontWeight.w500 ,),),
                  Container(
                    width: 71,
                    // alignment: Alignment.center,
                    padding: EdgeInsetsDirectional.symmetric(vertical: 0, horizontal: 12),
                    decoration: BoxDecoration(
                      color: Color(0xffE6F6F4),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical:4),
                      child: Text("Active", textAlign: TextAlign.center,style: TextStyle(color: Color(0xff00A991),fontSize: 10 ,fontWeight:FontWeight.w400 ),),
                    ),
                  ),
                ],
               ),
                const SizedBox(height: 8,),
                const Text(" \$ 100/day",style: TextStyle(color: Color(0xFF2E2C2C) ,fontSize: 16,fontWeight:   FontWeight.w500)),
                SizedBox(height: 40,),

               const ReservedDetails(),

              const SizedBox(height: 16,),
              const Text("Documents",style: TextStyle(color: Color(0xff2E2C2C) ,fontSize: 18,fontWeight:FontWeight.w500 ,)),
              const SizedBox(height: 24,),
              Column(
                children: List.generate(documentsName.length, (index){
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 20.0, ),
                    child: InkWell(
                      onTap: (){
                      },
                      child: Row(
                        children: [
                          const Image(image: AssetImage("assets/icon_image/pdf_icon.png"),height: 25,width: 25,),
                          const SizedBox(width: 16,),
                          Text(documentsName[index],style: TextStyle(color: Color(0xff2E2C2C) ,fontSize: 12,fontWeight:FontWeight.w400 ,))
                        ],
                      ),
                    ),
                  );
                }),
              )

            ],
          ),
        ),
      ),
    );
  }
}
 