import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tawasel/movie/presentation/screens/drawer_menu_screen.dart';

import 'package:tawasel/movie/presentation/widgets/app_bar_widget.dart';

import 'package:tawasel/movie/presentation/widgets/now_playing_widget.dart';
import 'package:tawasel/movie/presentation/widgets/popular_widget.dart';

import 'package:tawasel/movie/presentation/widgets/top_rated_widget.dart';
import 'package:tawasel/movie/presentation/widgets/trending_movies_widget.dart';

import '../../../core/services/service_locator.dart';

import '../controllers/bloc/movie/movie_bloc.dart';
import '../controllers/bloc/movie/movie_events.dart';
import '../widgets/section_title_widget.dart';
import '../widgets/top_home_section_widget.dart';

class MainMoviesScreen extends StatelessWidget {
  const MainMoviesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<MoviesBloc>()
        ..add(GetNowPlayingMoviesEvent())
        ..add(GetPopularMoviesEvent())
        ..add(GetTopRatedMoviesEvent())
        ..add(GetTrendingMoviesEvent()),
      child: Scaffold(
        drawer: const DrawerMenuScreen(),
        appBar: buildAppBarWidget(),
        backgroundColor: Colors.grey.shade900,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          key: const Key('movieScrollView'),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TopHomeSectionWidget(),
              const SizedBox(
                height: 10,
              ),
              const NowPlayingWidget(),
              SectionTitleWidget(title: "Trending", onTap: () {}),
              const TrendingMoviesWidget(),
              SectionTitleWidget(title: "Popular", onTap: () {}),
              const PopularWidget(),
              SectionTitleWidget(title: "Top Rated", onTap: () {}),
              const TopRatedWidget(),
              const SizedBox(height: 50.0),
            ],
          ),
        ),
        // bottomNavigationBar: const BottomNavBarWidget(),
      ),
    );
  }
}
