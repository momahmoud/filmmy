import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/color_constants.dart';
import 'text_field_widget.dart';

class TopHomeSectionWidget extends StatelessWidget {
  const TopHomeSectionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
        image: DecorationImage(
          image: const CachedNetworkImageProvider(
            'https://www.themoviedb.org/t/p/w1920_and_h427_multi_faces/wm10TBrmpKbkP4e51KhK2b0p225.jpg',
          ),
          opacity: .2,
          fit: BoxFit.cover,
          filterQuality: FilterQuality.high,
          colorFilter: ColorFilter.mode(
            ColorConstants.primaryColor.withOpacity(.3),
            BlendMode.color,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const <Widget>[
                Text(
                  'Welcome.',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 30,
                    fontFamily: 'AveriaSansLibre',
                  ),
                ),
                SizedBox(height: 8),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 300,
                    child: Text(
                      'Millions of movies, TV shows and people to discover. Explore now.',
                      style: TextStyle(
                        fontSize: 17,
                        // letterSpacing: 2,
                        color: Colors.white70,
                        fontFamily: 'AveriaSansLibre',
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const TextFieldWidget(),
        ],
      ),
    );
  }
}
