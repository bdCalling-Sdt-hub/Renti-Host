import 'package:flutter/material.dart';


class AddCarBodySection extends StatefulWidget {
  const AddCarBodySection({super.key});

  @override
  State<AddCarBodySection> createState() => _AddCarBodySectionState();
}

class _AddCarBodySectionState extends State<AddCarBodySection> {
  List years = ["2020","2929","2021","2023","2020","2012","2015", "2024","2020","2929","2021", "2023","2012","2015", "2024","2020","2929","2021", "2023"];
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
           PopupMenuButton(
             onSelected: (val) => setState(() => iniTialValue = val),
             initialValue: iniTialValue,
             position: PopupMenuPosition.under,
             elevation: 1,
             offset: const Offset(0, 1),
             itemBuilder: (context) {
               return List.generate(years.length, (index) {
                 return  PopupMenuItem(
                     child: Text(years[index],style: const TextStyle(color: Color(0xff2E2C2C),fontSize:14, fontWeight:FontWeight.w400 ),),
                 );
               }
               );

             },
             child: GestureDetector(
               onTap: (){
                 setState(() {
                   isClicked == !isClicked;
                 });

               },
               child: Container(
                 padding: const EdgeInsetsDirectional.symmetric(horizontal: 16,vertical: 16),
                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
                     border: Border.all(color: const Color(0xffcccccc),width: 1)),
                 child:  isClicked? const Icon(Icons.keyboard_arrow_down):const Icon(Icons.keyboard_arrow_down),

               ),
             ),
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
                borderSide:
                const BorderSide(color: Color(0xffCCCCCC), width: 1)),
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

