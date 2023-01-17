import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/utils/color_constants.dart';

class SectionTitleWidget extends StatelessWidget {
  final String title;
  final Function onTap;
  const SectionTitleWidget({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(
        16.0,
        10.0,
        16.0,
        8.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: GoogleFonts.averiaSansLibre(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.15,
              color: Colors.white,
            ),
          ),
          InkWell(
            onTap: () {
              /// TODO : NAVIGATION TO Top Rated Movies Screen
              onTap();
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    'See More',
                    style: GoogleFonts.averiaSansLibre(
                      color: ColorConstants.primaryColor,
                    ),
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 16.0,
                    color: ColorConstants.primaryColor,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
