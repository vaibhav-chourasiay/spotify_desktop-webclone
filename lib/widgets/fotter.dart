import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:spotify_app/models/selectedsong.dart';

class Fotter extends StatelessWidget {
  const Fotter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final check = context.watch<SelectedSong>();
    if (check.song == null) {
      return const SizedBox.shrink();
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Image.asset(
            "assets/lofigirl.jpg",
            width: 60.0,
            height: 60.0,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            width: 5.0,
          ),
          Morecontrols(check, context),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_outline_outlined),
          ),
          const Spacer(),
          SongController(),
          const Spacer(),
          if (MediaQuery.of(context).size.width > 800) Fotterside(),
        ],
      ),
    );
  }

  Container Morecontrols(SelectedSong check, BuildContext context) {
    return Container(
      width: 160.0,
      child: Column(
        children: [
          Text(
            check.song!.title,
            style: Theme.of(context).textTheme.bodyText2,
          ),
          const SizedBox(
            height: 5.0,
          ),
          Text(
            check.song!.artist,
            style: Theme.of(context)
                .textTheme
                .subtitle2!
                .copyWith(fontSize: 10.0, color: Colors.grey[300]),
          ),
        ],
      ),
    );
  }
}

class Fotterside extends StatelessWidget {
  const Fotterside({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: const [
          Icon(Icons.volume_up),
          SizedBox(
            width: 20.0,
          ),
          Icon(Icons.zoom_out_map),
          SizedBox(
            width: 10.0,
          ),
        ],
      ),
    );
  }
}

class SongController extends StatelessWidget {
  const SongController({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          alignment: Alignment.center,
          iconSize: 25.0,
          icon: Icon(
            Icons.shuffle,
          ),
        ),
        SizedBox(
          width: 10.0,
        ),
        IconButton(
          onPressed: () {},
          alignment: Alignment.center,
          iconSize: 25.0,
          icon: Icon(
            Icons.arrow_left,
          ),
        ),
        SizedBox(
          width: 10.0,
        ),
        IconButton(
          onPressed: () {},
          alignment: Alignment.center,
          iconSize: 30.0,
          icon: Icon(
            Icons.play_circle_fill,
          ),
        ),
        SizedBox(
          width: 10.0,
        ),
        IconButton(
          onPressed: () {},
          alignment: Alignment.center,
          iconSize: 30.0,
          icon: Icon(
            Icons.arrow_right,
          ),
        ),
        SizedBox(
          width: 10.0,
        ),
        IconButton(
          onPressed: () {},
          alignment: Alignment.center,
          iconSize: 25.0,
          icon: Icon(
            Icons.repeat,
          ),
        ),
        SizedBox(
          width: 10.0,
        ),
      ],
    );
  }
}
