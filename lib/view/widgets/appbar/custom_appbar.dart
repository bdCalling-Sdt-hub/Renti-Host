import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget{

  final double appBarHeight;
  final double? appBarWidth;
  final Color appBarBgColor;
  final Widget appBarContent;
  final double bottom;
  final double bottomLeft;

  const CustomAppBar({
    this.bottomLeft = 0,
    this.bottom = 0,
    this.appBarHeight = 64,
    this.appBarWidth,
    this.appBarBgColor = Colors.transparent,
    required this.appBarContent,
    super.key
  });

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  Size get preferredSize => Size(appBarWidth ?? double.infinity, appBarHeight);
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {

    return PreferredSize(
      preferredSize: widget.preferredSize,
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding:  EdgeInsetsDirectional.only(start: 20, top: 24, end: 20,bottom: widget.bottom),
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(color: widget.appBarBgColor,
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(widget.bottomLeft), bottomRight: Radius.circular(widget.bottomLeft))),
        child: widget.appBarContent,
      ),
    );
  }
}