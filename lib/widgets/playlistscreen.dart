import 'package:flutter/material.dart';
import 'package:spotify_app/models/data.dart';
import 'package:spotify_app/widgets/playlistheader.dart';

class PlayListScreen extends StatefulWidget {
  final playlist;

  const PlayListScreen({Key? key, this.playlist}) : super(key: key);

  @override
  _PlayListScreenState createState() => _PlayListScreenState();
}

class _PlayListScreenState extends State<PlayListScreen> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leadingWidth: 80.0,
          leading: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {},
                customBorder: const CircleBorder(),
                child: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black26,
                    ),
                    child: Icon(
                      Icons.chevron_left,
                      size: 30.0,
                      color: Theme.of(context).iconTheme.color,
                    )),
              ),
              const SizedBox(
                width: 8.0,
              ),
              InkWell(
                onTap: () {},
                customBorder: const CircleBorder(),
                child: Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black26,
                  ),
                  child: Icon(
                    Icons.chevron_right,
                    size: 30.0,
                    color: Theme.of(context).iconTheme.color,
                  ),
                ),
              ),
            ],
          ),
          actions: [
            TextButton.icon(
              onPressed: () {},
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(
                    Theme.of(context).iconTheme.color),
                padding: MaterialStateProperty.all(const EdgeInsets.all(0.0)),
              ),
              icon: const Icon(
                Icons.account_circle_outlined,
              ),
              label: const Text(
                "Vaibhav",
              ),
            ),
            const SizedBox(
              width: 5.0,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_drop_down_circle,
              ),
              color: Theme.of(context).iconTheme.color,
            ),
            const SizedBox(
              width: 10.0,
            ),
          ],
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFFAE1018), Colors.black],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0, 0.3],
            ),
          ),
          child: PlayListHeader(playlist: widget.playlist),
        ),
      ),
    );
  }
}
