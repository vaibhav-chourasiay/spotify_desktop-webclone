import 'package:flutter/material.dart';
import 'package:spotify_app/models/data.dart';

class Plib extends StatefulWidget {
  const Plib({Key? key}) : super(key: key);

  @override
  _PlibState createState() => _PlibState();
}

class _PlibState extends State<Plib> {
  ScrollController? controller;
  @override
  void initState() {
    super.initState();
    controller = ScrollController();
  }

  @override
  void dispose() {
    super.dispose();
    controller?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Scrollbar(
        isAlwaysShown: true,
        controller: controller,
        child: ListView(
          controller: controller,
          physics: const ClampingScrollPhysics(),
          shrinkWrap: true,
          children: [
            Column(
              children: [
                ListTile(
                  title: Text(
                    "YOUR LIBIRERY",
                    style: Theme.of(context).textTheme.headline4,
                    overflow: TextOverflow.ellipsis,
                  ),
                  onTap: () {},
                ),
                ...yourLibrary
                    .map(
                      (e) => ListTile(
                        title: Text(
                          "$e",
                          style: Theme.of(context).textTheme.bodyText2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        dense: true,
                        onTap: () {},
                      ),
                    )
                    .toList(),
              ],
            ),
            Column(
              children: [
                ListTile(
                  title: Text(
                    "PLAYLIST",
                    style: Theme.of(context).textTheme.headline4,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                ...playlists
                    .map(
                      (e) => ListTile(
                        title: Text(
                          "$e",
                          style: Theme.of(context).textTheme.bodyText2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        dense: true,
                      ),
                    )
                    .toList(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
