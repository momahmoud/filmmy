import 'package:flutter/material.dart';

import '../../../core/utils/color_constants.dart';

class DrawerMenuItemWidget extends StatelessWidget {
  final IconData? leading;
  final String label;

  final VoidCallback onPressed;

  const DrawerMenuItemWidget({
    Key? key,
    this.leading,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Material(
                  elevation: 10,
                  color: ColorConstants.primaryColor.withOpacity(.5),
                  type: MaterialType.circle,
                  child: Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: Icon(
                      leading,
                      size: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  label,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    fontFamily: 'AveriaSansLibre',
                  ),
                ),
              ],
            ),
            const Icon(
              Icons.arrow_right,
              size: 25,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
