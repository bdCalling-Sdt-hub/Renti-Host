import 'package:flutter/material.dart';

class DocumentsFiles extends StatefulWidget {
  const DocumentsFiles({super.key});

  @override
  State<DocumentsFiles> createState() => _DocumentsFilesState();
}

class _DocumentsFilesState extends State<DocumentsFiles> {

  List documentsName = ["Circulation card","Environmental  verification hologram","REPUVE","Car insurance policy","Car License",];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Documents",style: TextStyle(color: Color(0xff2E2C2C) ,fontSize: 18,fontWeight:FontWeight.w500 ,)),
        const SizedBox(height: 24,),
        Column(
          children: List.generate(documentsName.length, (index){
            return Padding(
              padding: const EdgeInsets.only(bottom: 20.0, ),
              child: InkWell(
                onTap: (){
                },
                child: Row(
                  children: [
                    const Image(image: AssetImage("assets/icon_image/pdf_icon.png"),height: 25,width: 25,),
                    const SizedBox(width: 16,),
                    Text(documentsName[index],style: const TextStyle(color: Color(0xff2E2C2C) ,fontSize: 12,fontWeight:FontWeight.w400 ,))
                  ],
                ),
              ),
            );
          }),
        )
      ],
    );
  }
}

