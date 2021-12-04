import 'package:flutter/material.dart';
import 'package:spotify_app/models/data.dart';
import 'package:spotify_app/widgets/fotter.dart';
import 'package:spotify_app/widgets/playlistscreen.dart';
import 'package:spotify_app/widgets/sidemenu.dart';

class Shell extends StatelessWidget {
  const Shell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.red,
              child: Row(
                children: [
                  if (MediaQuery.of(context).size.width > 800) SideMenu(),
                  PlayListScreen(
                    playlist: lofihiphopPlaylist,
                  ),
                ],
              ),
            ),
          ),
          Fotter(),
        ],
      ),
    );
  }
}
