import 'package:animate_do/animate_do.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:tawasel/core/utils/color_constants.dart';
import 'package:tawasel/movie/domain/entities/movie.dart';

import '../../../core/utils/app_constants.dart';
import '../screens/movie_detail_screen.dart';

class MovieCardWidget extends StatelessWidget {
  final List<Movie> movies;
  final int itemCount;
  const MovieCardWidget(
      {Key? key, required this.movies, required this.itemCount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeIn(
      duration: const Duration(milliseconds: 500),
      child: SizedBox(
        height: 190.0,
        child: ListView.builder(
          addAutomaticKeepAlives: true,
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          itemCount: itemCount,
          itemBuilder: (context, index) {
            final movie = movies[index];

            return Container(
              margin: const EdgeInsets.only(right: 8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (ctx) => MovieDetailScreen(id: movie.id)));
                },
                child: Stack(
                  fit: StackFit.passthrough,
                  clipBehavior: Clip.hardEdge,
                  children: [
                    ClipRRect(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(8.0)),
                      child: CachedNetworkImage(
                        width: 130.0,
                        fit: BoxFit.cover,
                        imageUrl: AppConstants.imageUrl(movie.backdropPath),
                        placeholder: (context, url) => Shimmer.fromColors(
                          baseColor: Colors.grey[850]!,
                          highlightColor: Colors.grey[800]!,
                          child: Container(
                            height: 170.0,
                            width: 120.0,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Material(
                        elevation: 10,
                        color: ColorConstants.primaryColor.withOpacity(.5),
                        type: MaterialType.circle,
                        child: const Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.favorite,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
