import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:renti_host/utils/app_icons.dart';
import 'package:renti_host/view/widgets/image/custom_image.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';
import 'package:path/path.dart' as path;


class DocumentFilesSection extends StatefulWidget {
  final List<String>? documentsName;
  const DocumentFilesSection({super.key, required this.documentsName});

  @override
  State<DocumentFilesSection> createState() => _DocumentFilesSectionState();
}

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
                return Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: InkWell(
                    onTap: () {
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const CustomImage(imageSrc: AppIcons.pdfIcon, size: 25),
                        Expanded(
                          child: CustomText(
                            textAlign: TextAlign.start,
                              overflow: TextOverflow.ellipsis,
                              text: filename,
                              fontSize: 12,
                              left: 16),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
