import 'package:flutter/material.dart';
import 'package:spotify_app/widgets/listviews.dart';

import 'showpandlib.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230.0,
      height: double.infinity,
      color: Colors.black,
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 15.0),
                child: Image.asset(
                  "assets/spotify_logo.png",
                  height: 56.0,
                  filterQuality: FilterQuality.medium,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10.0,
          ),
          MenuList(
            title: "Home",
            icon: Icons.home,
            ontap: () {},
          ),
          MenuList(title: "Search", icon: Icons.search, ontap: () {}),
          MenuList(title: "Radio", icon: Icons.music_note, ontap: () {}),
          const SizedBox(
            height: 10.0,
          ),
          const Plib(),
        ],
      ),
    );
  }
}
