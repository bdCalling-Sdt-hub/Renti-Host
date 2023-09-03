import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/utils/app_static_strings.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';

class YearSelectDropDown extends StatefulWidget {
  const YearSelectDropDown({super.key});

  @override
  State<YearSelectDropDown> createState() => _YearSelectDropDownState();
}

class _YearSelectDropDownState extends State<YearSelectDropDown> {
  final List<String> hearCutItems = [
    "2020",
    "2929",
    "2021",
    "2023",
    "2020",
    "2020",
    "2929",
    "2021",
    "2023",
    "2020",
    "2020",
    "2929",
    "2021",
    "2023",
    "2020",
  ];

  String? selectedHearColorValue;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField2<String>(
      isExpanded: true,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.whiteLight,
        border: OutlineInputBorder(
          borderSide: const BorderSide(width: 0.50, color: Color(0xFF535770),
          ),
          borderRadius: BorderRadius.circular(4),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 0.50, color: Color(0xFF535770),
          ),
          borderRadius: BorderRadius.circular(4),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide:
              const BorderSide(width: 1, color: AppColors.whiteDarkHover),
          borderRadius: BorderRadius.circular(4),
        ),
      ),
      hint: const CustomText(
        text: AppStaticStrings.year,color: AppColors.blackNormal,
      ),
      items: hearCutItems
          .map((item) => DropdownMenuItem<String>(
                value: item,
                child: CustomText(text: item),
              ))
          .toList(),
      validator: (value) {
        if (value == null) {
          return 'Please Select Hair Cut';
        }
        return null;
      },
      onChanged: (value) {},
      onSaved: (value) {
        selectedHearColorValue = value.toString();
      },
      buttonStyleData: const ButtonStyleData(
        padding: EdgeInsets.only(right: 8),
      ),
      iconStyleData: const IconStyleData(
        icon: Icon(
          Icons.arrow_drop_down,
          color: AppColors.whiteLight,
        ),
        iconSize: 24,
      ),
      dropdownStyleData: DropdownStyleData(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: AppColors.blueNormal,
          border: Border.all(color: AppColors.shadowColor),
        ),
      ),
      menuItemStyleData: const MenuItemStyleData(
        padding: EdgeInsets.symmetric(horizontal: 16),
      ),
    );
  }
}

/*PopupMenuButton(
            position: PopupMenuPosition.under,
                  icon: isClicked
                      ? InkWell(
                          onTap: () {
                            setState(() {
                              isClicked = !isClicked;
                            });
                          },
                          child: const Icon(Icons.keyboard_arrow_down_outlined))
                      : const Icon(Icons.keyboard_arrow_up_outlined),
                  itemBuilder: (context) {
                    return years.map((item) {
                      return PopupMenuItem(
                        value: item,
                        child: Center(child: Text(item)),
                      );
                    }).toList();
                  },
                  onSelected: (item) {
                    print(item);
                  },
                )*/
