import 'package:flutter/material.dart';
import 'package:renti_host/view/screens/car_list/inner_widgets/popup_menu_button.dart';

class SearchFilter extends StatefulWidget {
  const SearchFilter({super.key});

  @override
  State<SearchFilter> createState() => _SearchFilterState();
}

class _SearchFilterState extends State<SearchFilter> {
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Expanded(
          flex: 12,
          child: TextFormField(
            showCursor: false,
            style: TextStyle(color: Color(0xff2E2C2C)),
            decoration: InputDecoration(
              hintText: "search car by company...",
              hintStyle: const TextStyle(
                  color: Color(0xffcccccc),
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide:
                  const BorderSide(color: Color(0xffCCCCCC), width: 1)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide:
                  const BorderSide(color: Color(0xffCCCCCC), width: 1)),
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        const Expanded(
          flex: 3,
          child: CustomPopupMenuButton(),
        )
      ],
    );
  }
}
