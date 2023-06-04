
import 'package:flutter/material.dart';

import '../common/color_extension.dart';

class AppBarView extends StatelessWidget implements PreferredSizeWidget {
  const AppBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        "Jipool",
        style: TextStyle(
          color: TColor.primary,
          fontWeight: FontWeight.w700,
          fontSize: 25,
        ),
      ),
      leading: TextButton(
        onPressed: () {},
        child: Icon(
          Icons.more_vert,
          size: 30,
          color: TColor.primary,
        ),
      ),
      actions: [
        Stack(
          alignment: Alignment.topRight,
          children: [
            TextButton(
              onPressed: () {},
              child: Icon(
                Icons.notifications_outlined,
                size: 30,
                color: TColor.primary,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15, right: 22),
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                  color: TColor.notificationActive,
                  borderRadius: BorderRadius.circular(5)),
            )
          ],
        )
      ],
      backgroundColor: TColor.appBarBg,
    );
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}