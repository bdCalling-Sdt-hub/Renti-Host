import 'package:flutter/material.dart';
import 'package:renti_host/view/screens/%20home/home/inner_widgets/home_car_list.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
            child: const Icon(Icons.arrow_back_ios_new,color: Color(0xff2E2C2C),size:18 ,)),
        titleSpacing: -8,
        title: const Text("Search",style: TextStyle(color: Color(0xff2E2C2C),fontSize: 18,fontWeight: FontWeight.w600,),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 24.0,left: 20,right: 20,bottom: 24),
          child: Column(
            children: [
                 TextFormField(
                   cursorColor: const Color(0xff2E2C2C),
                   showCursor: false,
                   style: const TextStyle(color: Color(0xff2E2C2C)),
                   decoration: InputDecoration(
                       prefixIcon: const Icon(Icons.search_outlined,size: 20,color: Color(0xffcccccc)),
                       suffixIcon: const Icon(Icons.cancel_outlined,size: 15,color: Color(0xff000B90),),
                       hintText: "Find Car Model",
                       hintStyle: const TextStyle(color: Color(0xffcccccc),fontSize: 14,fontWeight: FontWeight.w400),
                       border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(8)
                       ),
                     enabledBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(8),
                       borderSide: const BorderSide(color: Color(0xffCCCCCC),width: 1)
                     ),
                     
                     focusedBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(8),
                         borderSide: const BorderSide(color: Color(0xffCCCCCC),width: 1)),

                   ),

                 ),
               HomeCarList()
            ],
          ),
        ),
      ),
    );
  }
}
