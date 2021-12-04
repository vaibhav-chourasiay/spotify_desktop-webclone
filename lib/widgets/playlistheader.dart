import 'package:flutter/material.dart';
import 'package:spotify_app/models/data.dart';
import 'package:spotify_app/widgets/datatable.dart';
import 'package:spotify_app/widgets/headerbotttom.dart';

class PlayListHeader extends StatefulWidget {
  final Playlist playlist;

  const PlayListHeader({Key? key, required this.playlist}) : super(key: key);

  @override
  _PlayListHeaderState createState() => _PlayListHeaderState();
}

class _PlayListHeaderState extends State<PlayListHeader> {
  ScrollController? controller2;
  @override
  void initState() {
    super.initState();
    controller2 = ScrollController();
  }

  @override
  void dispose() {
    super.dispose();
    controller2?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      controller: controller2,
      isAlwaysShown: true,
      child: ListView(
        controller: controller2,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      widget.playlist.imageURL,
                      height: 200.0,
                      width: 200.0,
                      fit: BoxFit.cover,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "PLAYLIST",
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Text(
                              "${widget.playlist.description}",
                              style: Theme.of(context).textTheme.headline2,
                            ),
                            const SizedBox(height: 16.0),
                            Text(
                              "${widget.playlist.name}",
                              style: Theme.of(context).textTheme.headline4,
                            ),
                            const SizedBox(height: 16.0),
                            Text(
                              "Created By ${widget.playlist.creator} - ${widget.playlist.songs.length} songs ,${widget.playlist.duration}",
                              style: Theme.of(context).textTheme.headline4,
                            ),
                            const SizedBox(height: 16.0),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                HeaderBottom(
                  follower: widget.playlist.followers,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                ShowDataTable(l: widget.playlist.songs),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
