import 'package:flutter/material.dart';
import 'package:renti_host/utils/app_icons.dart';
import 'package:renti_host/utils/app_static_strings.dart';
import 'package:renti_host/view/widgets/image/custom_image.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';

class DocumentFilesSection extends StatefulWidget {
  const DocumentFilesSection({super.key});

  @override
  State<DocumentFilesSection> createState() => _DocumentFilesSectionState();
}

class _DocumentFilesSectionState extends State<DocumentFilesSection> {
  List documentsName = [
    "Circulation card",
    "Environmental  verification hologram",
    "REPUVE",
    "Car insurance policy",
    "Car License",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomText(
            text: AppStaticStrings.documents,
            fontSize: 18,
            fontWeight: FontWeight.w500),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              documentsName.length,
              (index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: InkWell(
                    onTap: () {},
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const CustomImage(imageSrc: AppIcons.pdfIcon, size: 25),
                        CustomText(text: "${documentsName[index]}",fontSize: 12,left: 16),
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
