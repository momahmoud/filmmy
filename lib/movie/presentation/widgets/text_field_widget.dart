import 'package:flutter/material.dart';
import 'package:tawasel/core/shared/theme_features.dart';
import 'package:tawasel/core/utils/color_constants.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 15),
      child: SizedBox(
        height: 45,
        child: Stack(
          children: [
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide.none,
                ),
                fillColor: Colors.white,
                filled: true,
                hintText: 'Search for a movie, tv show, person...',
                hintStyle: const TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                  fontFamily: fontFamily,
                ),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
              ),
            ),
            Positioned(
              right: 0,
              child: Container(
                width: 90,
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xff1CD2AE),
                      ColorConstants.primaryColor,
                    ],
                    begin: Alignment.centerLeft,
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Search',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: fontFamily,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
