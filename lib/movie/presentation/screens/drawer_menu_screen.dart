import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tawasel/core/utils/color_constants.dart';

import '../widgets/drawer_menu_item_widget.dart';

class DrawerMenuScreen extends StatelessWidget {
  const DrawerMenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            const Color(0xff032541),
            const Color(0xff032541).withOpacity(.9),
            const Color(0xff032541).withOpacity(.8),
            const Color(0xff032541).withOpacity(.7),
            const Color(0xff032541).withOpacity(.3),
            ColorConstants.primaryColor.withOpacity(.6),
          ],
        ),
      ),
      width: 280,
      child: Theme(
        data: ThemeData(
            textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(primary: ColorConstants.primaryColor),
        )),
        child: SafeArea(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Column(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor:
                                ColorConstants.primaryColor.withOpacity(.6),
                            radius: 40,
                            child: Image.asset(
                              'assets/images/user.png',
                              width: 30,
                              height: 30,
                              fit: BoxFit.cover,
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'mohamed mahmoud',
                                  style: TextStyle(
                                    color: ColorConstants.primaryColor,
                                    fontSize: 19,
                                    fontFamily: 'AveriaSansLibre',
                                  ),
                                ),
                                const Text(
                                  'mohamed@gmail.com',
                                  style: TextStyle(
                                    color: ColorConstants.primaryColor,
                                    fontSize: 15,
                                    fontFamily: 'AveriaSansLibre',
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      'view profile',
                                      style: TextStyle(
                                        color: ColorConstants.primaryColor,
                                        fontSize: 16,
                                        fontFamily: 'AveriaSansLibre',
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_right,
                                      size: 25,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    DrawerMenuItemWidget(
                      leading: Icons.home,
                      label: 'Home',
                      onPressed: () {},
                    ),
                    DrawerMenuItemWidget(
                      leading: Icons.movie,
                      label: 'Movies',
                      onPressed: () {},
                    ),
                    DrawerMenuItemWidget(
                      leading: Icons.live_tv_rounded,
                      label: 'TV Shows',
                      onPressed: () {},
                    ),
                    DrawerMenuItemWidget(
                      leading: Icons.people,
                      label: 'People',
                      onPressed: () {},
                    ),
                    DrawerMenuItemWidget(
                      leading: Icons.info,
                      label: 'About',
                      onPressed: () {},
                    ),
                    DrawerMenuItemWidget(
                      leading: Icons.settings,
                      label: 'Settings',
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                height: 90,
                width: 280,
                child: _buildBottomContainer(),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBottomContainer() {
    return Container(
      decoration: BoxDecoration(
        color: ColorConstants.primaryColor.withOpacity(.5),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Contact Us',
              style: TextStyle(
                color: ColorConstants.primaryColor,
                fontSize: 18,
                fontFamily: 'AveriaSansLibre',
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.facebook,
                    color: ColorConstants.primaryColor,
                    size: 30,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.email_outlined,
                    color: ColorConstants.primaryColor,
                    size: 35,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.whatsapp,
                    color: ColorConstants.primaryColor,
                    size: 35,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
