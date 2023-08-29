import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:renti_host/utils/app_colors.dart';
import 'package:renti_host/view/widgets/text/custom_text.dart';

class CustomElevatedButtonWithIcon extends StatelessWidget {
  final VoidCallback onPressed;
  final String titleText;
  final Color titleColor;
  final Color buttonColor;
  final Color buttonBorderColor;
  final Color? iconColor;
  final double titleSize;
  final FontWeight titleWeight;
  final double buttonRadius;
  final double buttonHeight;
  final double? buttonWidth;
  final double buttonBorderWidth;
  final double iconSize;
  final String iconSrc;
  final double left;

  const CustomElevatedButtonWithIcon(
      {required this.onPressed,
      required this.titleText,
      this.titleColor = AppColors.blackNormal,
      this.buttonColor = AppColors.whiteLight,
      this.buttonBorderColor = AppColors.blueLight,
      this.iconColor,
      this.titleSize = 14,
      this.buttonRadius = 8,
      this.titleWeight = FontWeight.w400,
      this.buttonHeight = 56,
      this.buttonBorderWidth = 1,
      this.buttonWidth = double.maxFinite,
      this.iconSize = 30,
      this.left = 16,
      required this.iconSrc,
      super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: buttonHeight,
      width: buttonWidth,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(buttonColor),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              side: BorderSide(
                  color: buttonBorderColor, width: buttonBorderWidth),
              borderRadius: BorderRadius.circular(buttonRadius),
            ),
          ),
          elevation: MaterialStateProperty.all(0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(iconSrc,
                color: iconColor, height: iconSize, width: iconSize),
            CustomText(
              text: titleText,
              color: titleColor,
              fontWeight: titleWeight,
              fontSize: titleSize,
              left: left,
            ),
          ],
        ),
      ),
    );
  }
}
