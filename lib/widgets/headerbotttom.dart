import 'package:flutter/material.dart';

class HeaderBottom extends StatefulWidget {
  final follower;

  const HeaderBottom({Key? key, this.follower}) : super(key: key);

  @override
  _HeaderBottomState createState() => _HeaderBottomState();
}

class _HeaderBottomState extends State<HeaderBottom> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          onPressed: () {},
          child: Text(
            "Play",
            style: Theme.of(context).textTheme.headline4,
          ),
          style: TextButton.styleFrom(
            backgroundColor: Theme.of(context).accentColor,
            padding:
                const EdgeInsets.symmetric(vertical: 18.0, horizontal: 35.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
        ),
        const SizedBox(
          width: 16.0,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.favorite_border),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.more_horiz),
        ),
        Spacer(),
        Text(
          "Followers : ${widget.follower}",
          style: TextStyle(fontSize: 10.0),
        ),
      ],
    );
  }
}
