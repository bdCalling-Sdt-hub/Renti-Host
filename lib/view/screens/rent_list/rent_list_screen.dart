import 'package:flutter/material.dart';
import 'package:renti_host/view/screens/rent_list/inner_widgets/active_button.dart';
import 'package:renti_host/view/screens/rent_list/inner_widgets/renti_details_alert.dart';
import 'package:renti_host/view/screens/rent_list/inner_widgets/reserved_button.dart';

class RentListScreen extends StatefulWidget {
  const RentListScreen({super.key});

  @override
  State<RentListScreen> createState() => _RentListScreenState();
}

List<Map<String, String>> dataList = [
  {
    "carName" : "Toyota Harrier",
    "image": "assets/images/Carphoto.png",
    "car license": "NBG1234567",
    "car year": "2020",
    "status": "Active",
  },
  {
    "carName" : "Toyota Harrier",
    "image": "assets/images/Carphoto.png",
    "car license": "NBG1234567",
    "car year": "2020",
    "status": "Active",
  },
  {
    "carName" : "Toyota Harrier",
    "image": "assets/images/Carphoto.png",
    "car license": "NBG1234567",
    "car year": "2020",
    "status": "Reserved",
  },
  {
    "carName" : "Toyota Harrier",
    "image": "assets/images/Carphoto.png",
    "car license": "NBG1234567",
    "car year": "2020",
    "status": "Active",
  },
  {
    "carName" : "Toyota Harrier",
    "image": "assets/images/Carphoto.png",
    "car license": "NBG1234567",
    "car year": "2020",
    "status": "Reserved",
  },
];

class _RentListScreenState extends State<RentListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
          centerTitle: false,
          elevation: 0,
          automaticallyImplyLeading: true,
          titleSpacing: -8,
          title: const Text(
               "Renti List",
            style: TextStyle(
              color: Color(0xFF2E2C2C),
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          backgroundColor: const Color(0xffffffff),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              weight: 18,
              size: 18,
            ),
            color: const Color(0xff2E2C2C),
          )),
      body: LayoutBuilder(builder: (context, constraint) {
        return SingleChildScrollView(
          padding: const EdgeInsetsDirectional.symmetric(vertical: 24,horizontal: 20),
          child: Column(
            children: List.generate(
                dataList.length,
                (index) => GestureDetector(
                  onTap: () => showDialog(
                      context: context,
                      builder: (BuildContext context) => const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                           child: RentiDetailsAlert() ,
                          )
                  ),
                  child: Container(
                    padding: const EdgeInsetsDirectional.all(8),
                    margin: const EdgeInsetsDirectional.only(bottom: 8),
                    decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                        borderRadius: BorderRadius.circular(8),
                        boxShadow:  [
                          BoxShadow(
                              color: const Color(0xff000000).withOpacity(0.1),
                              blurRadius: 10,
                              offset: Offset(0, 1)
                          )
                        ]
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    dataList[index]["image"]!,
                                  ),
                                  fit: BoxFit.cover,

                              ),
                            )),
                            const SizedBox(width: 16),
                             Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  dataList[index]["carName"]!,
                                  style: const TextStyle(
                                    color: Color(0xFF2E2C2C),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Car license: ',
                                        style: TextStyle(
                                          color: Color(0xFF999999),
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      TextSpan(
                                        text:  dataList[index]["car license"],
                                        style: const TextStyle(
                                          color: Color(0xFF2E2C2C),
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 8),
                                 Text.rich(
                                  TextSpan(
                                    children: [
                                      const TextSpan(
                                        text: 'Car year:',
                                        style: TextStyle(
                                          color: Color(0xFF999999),
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      TextSpan(
                                        text: dataList[index]["car year"],
                                        style: const TextStyle(
                                          color: Color(0xFF2E2C2C),
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        dataList[index]["status"] == "Reserved"
                            ? const ReservedButton()
                            : const ActiveButton()
                      ],
                    ),
                  ),
                ),
            ),
          ),
        );
      }),
    );
  }
}
