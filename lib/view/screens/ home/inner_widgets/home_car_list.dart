import 'package:flutter/material.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_images.dart';
import 'package:renti_host/utils/app_static_strings.dart';
import 'package:renti_host/view/screens/income_page/renti_free/inner_widget/start_end_date.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';

class HomeCarList extends StatefulWidget {
  const HomeCarList({super.key});

  @override
  State<HomeCarList> createState() => _HomeCarListState();
}

class _HomeCarListState extends State<HomeCarList> {
  bool isClicked = false;
  int selectedIndex = -1;

  List<Map<String, String>> dataList = [
    {
      "image": AppImages.blueCar,
      "carModel": "Toyota Harrier",
      "price": "\$100",
      "status": "Reserved",
    },
    {
      "image": AppImages.blueCar,
      "carModel": "Toyota Harrier",
      "price": "\$100",
      "status": "Active",
    },
    {
      "image": AppImages.blueCar,
      "carModel": "Toyota Harrier",
      "price": "\$100",
      "status": "Reserved",
    },
    {
      "image": AppImages.blueCar,
      "carModel": "Toyota Harrier",
      "price": "\$100",
      "status": "Active",
    },
    {
      "image": AppImages.blueCar,
      "carModel": "Toyota Harrier",
      "price": "\$100",
      "status": "Reserved",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomText(text: AppStaticStrings.carsList, fontWeight: FontWeight.w600),
            CustomText(text: AppStaticStrings.seeAll, color: AppColors.blueNormal),
          ],
        ),
        Column(
          children: List.generate(
            dataList.length,
            (index) {
              return Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 16.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          dataList[index]["image"] ?? "",
                          fit: BoxFit.fill,
                          height: 70,
                          width: 130,
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsetsDirectional.symmetric(
                                vertical: 8, horizontal: 8),
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(8),
                                bottomRight: Radius.circular(8),
                              ),
                              border: Border(
                                  top: BorderSide(
                                    color: AppColors.blueLight,
                                    width: 1.0,
                                    style: BorderStyle.solid,
                                  ),
                                  bottom: BorderSide(
                                      color: AppColors.blueLight,
                                      width: 1.0,
                                      style: BorderStyle.solid),
                                  right: BorderSide(
                                      color: AppColors.blueLight,
                                      width: 1.0,
                                      style: BorderStyle.solid),
                                  left: BorderSide.none),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: CustomText(
                                          text: dataList[index]["carModel"].toString(),
                                          maxLines: 1,
                                          fontWeight: FontWeight.w700,
                                          color: AppColors.blueNormal,
                                          textAlign: TextAlign.start,
                                          right: 10),
                                    ),
                                    dataList[index]["status"] == "Reserved"
                                        ? Container(
                                            width: 70,
                                            alignment: Alignment.center,
                                            padding: const EdgeInsetsDirectional.symmetric(vertical: 4, horizontal: 12),
                                            decoration: BoxDecoration(
                                              color: AppColors.redLight,
                                              borderRadius: BorderRadius.circular(4),
                                            ),
                                            child: const CustomText(
                                                text: AppStaticStrings.reserved,
                                                fontSize: 10,
                                                color: AppColors.redNormal),)
                                        : Container(
                                            width: 70,
                                            alignment: Alignment.center,
                                            padding: const EdgeInsetsDirectional.symmetric(vertical: 4, horizontal: 12),
                                            decoration: BoxDecoration(
                                              color: AppColors.greenLight,
                                              borderRadius: BorderRadius.circular(4),
                                            ),
                                            child: const CustomText(
                                              text: AppStaticStrings.active,
                                              fontSize: 10,
                                              color: AppColors.greenNormal,
                                            ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 16),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        CustomText(
                                            text: dataList[index]["price"].toString(),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: AppColors.whiteDarker),
                                        const CustomText(
                                            text: AppStaticStrings.perDay,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: AppColors.whiteDarker),
                                      ],
                                    ),
                                    dataList[index]["status"] == "Reserved"
                                        ? GestureDetector(
                                            onTap: () {
                                              changeIndex(index);
                                            },
                                            child: Icon(
                                                isClicked
                                                    ? Icons.keyboard_arrow_up_rounded
                                                    : Icons.keyboard_arrow_down_rounded,
                                                color: AppColors.blueNormal,
                                                size: 18,
                                                weight: 10),
                                          )
                                        : const SizedBox()
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  dataList[index]["status"] == "Reserved" && index == selectedIndex
                      ? StartEndDate()
                      : const SizedBox()
                ],
              );
            },
          ),
        ),
      ],
    );
  }

  changeIndex(int index) {
    setState(() {
      selectedIndex = index;
      isClicked = !isClicked;
    });
  }
}
