import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:get/get.dart';
import 'package:renti_host/core/global/api_url_container.dart';
import 'package:renti_host/view/screens/%20home/home_model/home_carlist_model.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';
import 'package:path/path.dart' as path;

import '../../../../utils/app_icons.dart';
import '../../../widgets/image/custom_image.dart';


class DocumentFilesSection extends StatefulWidget {
  final List<String>? documentsName;

   const DocumentFilesSection({super.key, required this.documentsName,});

  @override
  State<DocumentFilesSection> createState() => _DocumentFilesSectionState();
}
HomeCarListModel homeCarListModel = Get.arguments[0];
int index = Get.arguments[1];
class _DocumentFilesSectionState extends State<DocumentFilesSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
            text: "Documents".tr,
            fontSize: 18,
            fontWeight: FontWeight.w500),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              widget.documentsName!.length,
                  (index) {
                var filename = path.basename(widget.documentsName![index]);
                bool isPDF = filename.endsWith(".pdf");

                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: GestureDetector(
                        onTap: (){

                        },
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            isPDF
                                ? const CustomImage(imageSrc: AppIcons.pdfIcon, size: 25)
                                : const Icon(Icons.description_outlined, color: Colors.black54, size: 25,),
                            CustomText(
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.ellipsis,
                              text: filename,
                              fontSize: 12,
                              left: 16,
                            ),
                          ],
                        ),
                      ),
                    ),
                    isPDF
                        ? SizedBox(
                      height: 200, // Set the desired height for the PDF viewer
                      child: PDFView(
                        filePath: "${ApiUrlContainer.imageUrl}${homeCarListModel.cars![0].kyc![index]}",
                        // Provide the path to the PDF file
                        enableSwipe: true,
                        swipeHorizontal: true,
                        autoSpacing: false,
                        pageSnap: false,
                        pageFling: false,
                        onRender: (pages) {
                          // Do something when the PDF is rendered
                        },
                        onPageChanged: (int ?page, int ?total) {

                        },
                        onError: (error) {
                          // Handle error
                          print(error);
                        },
                      ),
                    )
                        : Container(
                      margin: const EdgeInsets.only(bottom: 8),
                      height: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage("${ApiUrlContainer.imageUrl}${homeCarListModel.cars![0].kyc![index]}")
                        ),
                      ),
                    )
                  ],
                );
              },
            ),
          ),
        ),

      ],
    );
  }
}
