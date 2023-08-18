import 'package:flutter/material.dart';

class CustomPopupMenuButton extends StatefulWidget {
  const CustomPopupMenuButton({super.key,
  });

  @override
  State<CustomPopupMenuButton> createState() => _PopupMenuButtonState();
}

class _PopupMenuButtonState extends State<CustomPopupMenuButton> {
  List carModel = ["Toyato","BMW","Nissan", "Limberghini"];
  int selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      position: PopupMenuPosition.under,
      elevation: 1,
      offset: Offset(0, 1),
      itemBuilder: (context) {
        return List.generate(carModel.length, (index) {
          return  PopupMenuItem(
              child: Row(
                children: [
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:  index == selectedItem ? const Color(0xff000B90) : const Color(0xffffffff),
                        border: Border.all(color: const Color(0xffcccccc),width: 1),
                        boxShadow: [
                          BoxShadow(
                              color : const Color(0xff000000).withOpacity(0.4),
                              offset: const Offset(0, 0),
                              blurRadius: 2
                          )
                        ]
                    ),
                  ),
                  const SizedBox(width: 10,),
                  Text(carModel[index],style: const TextStyle(color: Color(0xff2E2C2C),fontSize:14, fontWeight:FontWeight.w400 ),)
                ],
              )
          );
        });
      },
      child: Container(
        padding: const EdgeInsetsDirectional.all(19),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Color(0xffcccccc),width: 1)),
        child: Icon(Icons.filter_list_outlined,color: Color(0xffcccccc),size: 20,),
      ),
    );
  }
}
