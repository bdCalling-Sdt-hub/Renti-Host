import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'package:renti_host/core/global/api_url_container.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/view/screens/%20home/home_controller/home_carlist_controller.dart';
import 'package:renti_host/view/screens/%20home/home_model/home_carlist_model.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';
import 'package:path/path.dart' as path;
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../../../../utils/app_icons.dart';
import '../../../widgets/image/custom_image.dart';

class DocumentFilesSection extends StatefulWidget {
  final List<String>? documentsName;

  const DocumentFilesSection({Key? key, required this.documentsName}) : super(key: key);

  @override
  State<DocumentFilesSection> createState() => _DocumentFilesSectionState();
}

HomeCarListModel homeCarListModel = Get.arguments[0];
int index = Get.arguments[1];
HomeCarListController controller = Get.put(HomeCarListController(homeCarListRepo: Get.find()));

bool loading = false;

class _DocumentFilesSectionState extends State<DocumentFilesSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: "Documents".tr,
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
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
                      child: InkWell(
                        onTap: () async {
                          if (isPDF) {
                            String pdfUrl = "${ApiUrlContainer.imageUrl}${homeCarListModel.cars![0].kyc![index]}";

                            String filePath = await downloadPDF(pdfUrl, filename);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PDFViewScreen(
                                  pdfFilePath: filePath,
                                ),
                              ),
                            );
                          }
                        },
                        child: SizedBox(
                          height:40,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              isPDF
                                  ? const CustomImage(imageSrc: AppIcons.pdfIcon, size: 25)
                                  : const Icon(Icons.description_outlined, color: Colors.black54, size: 25,),
                              Flexible(
                                child: CustomText(
                                  textAlign: TextAlign.start,
                                  overflow: TextOverflow.ellipsis,
                                  text: filename,
                                  fontSize: 12,
                                  left: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    isPDF
                        ? const SizedBox(
                     height: 20,
                    )
                        :controller.isLoading? const Center(child: CircularProgressIndicator(color: AppColors.blueNormal,)): Container(
                      margin: const EdgeInsets.only(bottom: 8),
                      height: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage("${ApiUrlContainer.imageUrl}${homeCarListModel.cars![0].kyc![index]}"),
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
///==========================PDF View screen =============================///
class PDFViewScreen extends StatelessWidget {
  final String pdfFilePath;

  const PDFViewScreen({Key? key, required this.pdfFilePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PDF Viewer'),
      ),
      body: PDFView(
        filePath: pdfFilePath,
        enableSwipe: true,
        swipeHorizontal: false,
        autoSpacing: true,
        pageSnap: false,
        pageFling: false,
        onRender: (pages) {
          // Do something when the PDF is rendered
        },
        onPageChanged: (int? page, int? total) {
          // Handle page change
        },
        onError: (error) {
          // Handle error
          print(error);
        },
      ),
    );
  }
}

Future<String> downloadPDF(String url, String filename) async {
  try {
    var dir = await getApplicationDocumentsDirectory();
    String localFilePath = path.join(dir.path, filename);

    // Check if the file exists locally, if not, download it
    if (!File(localFilePath).existsSync()) {
      var response = await http.get(Uri.parse(url));
      await File(localFilePath).writeAsBytes(response.bodyBytes);
    }

    return localFilePath;
  } catch (e) {
    throw Exception('Error downloading PDF file!');
  }
}
