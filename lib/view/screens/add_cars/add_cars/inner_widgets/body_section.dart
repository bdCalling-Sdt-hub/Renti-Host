import 'package:flutter/material.dart';


class AddCarBodySection extends StatefulWidget {
  const AddCarBodySection({super.key});

  @override
  State<AddCarBodySection> createState() => _AddCarBodySectionState();
}
class _AddCarBodySectionState extends State<AddCarBodySection> {
  List years = ["2020","2929","2021","2023","2020","2020","2929","2021","2023","2020","2020","2929","2021","2023","2020", ];
  bool isClicked = true;
  String iniTialValue= "year";
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Car Model Name",
            style: TextStyle(
              color: Color(0xff2E2C2C),
              fontSize: 14,
              fontWeight: FontWeight.w400,
            )),
        const SizedBox(
          height: 12,
        ),

        Row(
          children: [
            Expanded(
              flex: 3,
              child: TextFormField(
                showCursor: false,
                style: const TextStyle(color: Color(0xff2E2C2C)),
                decoration: InputDecoration(
                  hintText: "Type name here",
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
           const SizedBox(width: 8,),
           Expanded(
             child: Container(
               height: 58,
               width: 58,
               decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(8),
                   border: Border.all(color: const Color(0xffcccccc)
                   )
               ),
               child: PopupMenuButton(
                 position: PopupMenuPosition.under,
               icon:  isClicked ? InkWell(
                   onTap: (){
                     setState(() {
                       isClicked = !isClicked;
                     });
                   },
                   child: const Icon(Icons.keyboard_arrow_down_outlined)):const Icon(Icons.keyboard_arrow_up_outlined),
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
                ),
             )
           )
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        // car license field
        const Text("Car License Number",
            style: TextStyle(
              color: Color(0xff2E2C2C),
              fontSize: 14,
              fontWeight: FontWeight.w400,
            )),
        const SizedBox(
          height: 12,
        ),
        TextFormField(
          showCursor: true,
          style: const TextStyle(color: Color(0xff2E2C2C)),
          decoration: InputDecoration(
            hintText: "Type license number here...",
            hintStyle: const TextStyle(
                color: Color(0xffcccccc),
                fontSize: 14,
                fontWeight: FontWeight.w400),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: Color(0xffCCCCCC), width: 1)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide:
                const BorderSide(color: Color(0xffCCCCCC), width: 1)),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        // car description
        const Text("Car Description",
            style: TextStyle(
              color: Color(0xff2E2C2C),
              fontSize: 14,
              fontWeight: FontWeight.w400,
            )),
        const SizedBox(
          height: 12,
        ),
        // car description  field
        SizedBox(
          height: 100,
          child: TextFormField(
            textInputAction: TextInputAction.newline,
            keyboardType: TextInputType.multiline,
            maxLines: 3,
            decoration: InputDecoration(
              hintText: "type description here...",
              hintStyle: const TextStyle(color: Color(0xffcccccc)),
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
          height: 16,
        ),
        // car license field
        const Text("Set Rent Amount",
            style: TextStyle(
              color: Color(0xff2E2C2C),
              fontSize: 14,
              fontWeight: FontWeight.w400,
            )),
        const SizedBox(
          height: 12,
        ),
        TextFormField(
          showCursor: true,
          style: const TextStyle(color: Color(0xff2E2C2C)),
          decoration: InputDecoration(
            hintText: "Type amount here...",
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
        const SizedBox(
          height: 12,
        ),
        Row(
          children: [
            Expanded(child: TextFormField(
              showCursor: true,
              style: const TextStyle(color: Color(0xff2E2C2C)),
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.calendar_month_rounded,size: 24,color: Color(0xff999999),),
                hintText: "Start",
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
            ),) ,
            const SizedBox(width: 16,),
            Expanded(child: TextFormField(
              showCursor: true,
              style: const TextStyle(color: Color(0xff2E2C2C)),
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.calendar_month_rounded,size: 24,color: Color(0xff999999),),
                hintText: "End",
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
            ),)
          ],
        ),
      ],
    );
  }
}

