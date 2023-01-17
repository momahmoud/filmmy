import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tawasel/core/utils/color_constants.dart';

AppBar buildAppBarWidget() {
  return AppBar(
    iconTheme:
        const IconThemeData(color: ColorConstants.primaryColor, size: 40),
    title: Row(
      children: <Widget>[
        const ImageIcon(
          AssetImage(
            'assets/images/cinema1.png',
          ),
          color: ColorConstants.primaryColor,
          size: 35,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          'FILMY',
          style: GoogleFonts.averiaSansLibre(
            fontSize: 27,
            fontWeight: FontWeight.bold,
            letterSpacing: 0.5,
            color: ColorConstants.primaryColor,
          ),
        ),
      ],
    ),
    backgroundColor: ColorConstants.primaryColor.withOpacity(.3),
    elevation: 0,
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(
          CupertinoIcons.search,
          color: ColorConstants.primaryColor,
          size: 26,
        ),
      ),
      IconButton(
        onPressed: () {},
        icon: const Icon(
          CupertinoIcons.cloud_download,
          color: ColorConstants.primaryColor,
          size: 26,
        ),
      ),
    ],
  );
}
