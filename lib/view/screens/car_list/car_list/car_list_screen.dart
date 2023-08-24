
import 'package:flutter/material.dart';
import 'package:renti_host/view/screens/%20home/home/inner_widgets/alert_box.dart';
import 'package:renti_host/view/screens/car_details/car_details/car_details_screen.dart';
import 'package:renti_host/view/screens/car_list/inner_widgets/popup_menu_button.dart';
import 'package:renti_host/view/screens/car_list/inner_widgets/search_filter.dart';

class CarListScreen extends StatefulWidget {
  const CarListScreen({super.key});

  @override
  State<CarListScreen> createState() => _CarListScreenState();
}

class _CarListScreenState extends State<CarListScreen> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar:AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: const Icon(
            Icons.arrow_back_ios_new,
            color: Color(0xff2E2C2C),
            size: 18,
          ),
          titleSpacing: -8,
          title: const Text(
            "Car list",
            style: TextStyle(
              color: Color(0xff2E2C2C),
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24.0,horizontal: 20),
          child: Column(
            children: [
               const SearchFilter(),
              const SizedBox(height: 16),
              Expanded(
                  child: SingleChildScrollView(
                    child: GridView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 30,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            childAspectRatio: MediaQuery.of(context).size.width,
                            crossAxisSpacing: 8,
                            mainAxisSpacing: 8,
                            mainAxisExtent: 214
                        ),
                          itemBuilder: (context, index) => Container(

                          decoration: BoxDecoration(
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: const [
                                BoxShadow(
                                    blurRadius: 8,
                                    color: Color(0x19000000)
                                )
                              ]
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: 56,
                                width: 112,
                                decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(bottomLeft:Radius.zero,bottomRight: Radius.zero,topLeft: Radius.circular(8),topRight: Radius.circular(8)),
                                    image: DecorationImage(  image: AssetImage("assets/images/blue_car.png"),
                                        fit: BoxFit.fill
                                    )
                                ),
                              ),
                              const SizedBox(height: 8,),
                              Container(
                                width: 71,
                                alignment: Alignment.center,

                                decoration: BoxDecoration(
                                  color: const Color(0xffE6F6F4),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 4.0),
                                  child: Text("Active", textAlign: TextAlign.center,style: TextStyle(color: Color(0xff00A991),fontSize: 10 ,fontWeight:FontWeight.w400 ),),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0, bottom: 10),
                                child: Column(
                                  children: [
                                    const Text("Toyota harrier",style: TextStyle(color: Color(0xff2E2C2C),fontSize: 12,fontWeight: FontWeight.w400),),
                                    const SizedBox(height: 4,),
                                    const Text("2018",style: TextStyle(color: Color(0xff737373),fontSize: 12,fontWeight: FontWeight.w400),),
                                    const SizedBox(height: 4,),
                                    const Text("61-10-TMG",style: TextStyle(color: Color(0xff2E2C2C),fontSize: 10,fontWeight: FontWeight.w400),),
                                    const SizedBox(height: 4,),
                                    TextButton(onPressed: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (_)=>const CarDetailsScreen()));
                                    }, child: const Text("See Details",style: TextStyle(color: Color(0xff000B90),fontSize: 10,fontWeight: FontWeight.w400),))
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                    ),
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
