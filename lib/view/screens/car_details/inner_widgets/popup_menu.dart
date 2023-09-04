import 'package:flutter/material.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_static_strings.dart';
import 'package:renti_host/view/screens/car_details/inner_widgets/delete_car_popup.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';

class PopUpMenu extends StatefulWidget {
  const PopUpMenu({super.key});

  @override
  State<PopUpMenu> createState() => _PopUpMenuState();
}

class _PopUpMenuState extends State<PopUpMenu> {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      color: AppColors.whiteLight,
      icon: const Icon(
        Icons.more_vert_outlined,
        color: Colors.black,
        size: 18,
      ),
      elevation: 1,
      position: PopupMenuPosition.under,
      itemBuilder: (context) => [
        const PopupMenuItem(
            child: Row(
          children: [
            Icon(
              Icons.edit_note_outlined,
              size: 20,
              color: AppColors.blackNormal,
            ),
            CustomText(text: AppStaticStrings.editCar, left: 16),
          ],
        )),
        PopupMenuItem(
          child: InkWell(
            onTap: () {
              showDialog<void>(
                context: context,
                barrierDismissible: false, // user must tap button!
                builder: (BuildContext context) {
                  return const DeleteCarPopUp();
                },
              );
            },
            child: const Row(
              children: [
                Icon(
                  Icons.delete,
                  size: 20,
                  color: AppColors.redNormal,
                ),
                CustomText(
                    text: AppStaticStrings.deleteCar,
                    left: 16,
                    color: AppColors.redNormal),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
