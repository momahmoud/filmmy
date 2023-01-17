// import 'package:animate_do/animate_do.dart';
// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';

// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:shimmer/shimmer.dart';
// import 'package:tawasel/movie/presentation/controllers/bloc/movie_details/movie_details_bloc.dart';

// import '../../../core/utils/app_constants.dart';

// class RecommendationWidget extends StatelessWidget {
//   const RecommendationWidget({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<MovieDetailsBloc, MovieDetailsState>(
//       builder: (context, state) {
//         return SliverGrid(
//           delegate: SliverChildBuilderDelegate(
//             (context, index) {
//               final recommendation = state.recommendation![index];
//               return FadeInUp(
//                 from: 20,
//                 duration: const Duration(milliseconds: 500),
//                 child: ClipRRect(
//                   borderRadius: const BorderRadius.all(Radius.circular(4.0)),
//                   child: Card(
//                     shape: const RoundedRectangleBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(4.0)),
//                     ),
//                     margin: EdgeInsets.zero,
//                     elevation: 15,
//                     child: CachedNetworkImage(
//                       imageUrl:
//                           AppConstants.imageUrl(recommendation.backdropPath!),
//                       placeholder: (context, url) => Shimmer.fromColors(
//                         baseColor: Colors.grey[850]!,
//                         highlightColor: Colors.grey[800]!,
//                         child: Container(
//                           height: 170.0,
//                           width: 120.0,
//                           decoration: BoxDecoration(
//                             color: Colors.black,
//                             borderRadius: BorderRadius.circular(8.0),
//                           ),
//                         ),
//                       ),
//                       errorWidget: (context, url, error) =>
//                           const Icon(Icons.error),
//                       height: 180.0,
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//               );
//             },
//             childCount: state.recommendation!.length,
//           ),
//           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//             mainAxisSpacing: 8.0,
//             crossAxisSpacing: 8.0,
//             childAspectRatio: 0.7,
//             crossAxisCount: 3,
//           ),
//         );
//       },
//     );
//   }
// }
