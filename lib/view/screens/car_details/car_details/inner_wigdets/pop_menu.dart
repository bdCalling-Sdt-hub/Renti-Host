import 'package:flutter/material.dart';
import 'package:renti_host/view/screens/car_details/car_details/inner_wigdets/custom_alert_box.dart';

class PopUpMenu extends StatefulWidget {
  const PopUpMenu({super.key});

  @override
  State<PopUpMenu> createState() => _PopUpMenuState();
}

class _PopUpMenuState extends State<PopUpMenu> {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        color: const Color(0xffffffff),
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
        ]);
  }
}
