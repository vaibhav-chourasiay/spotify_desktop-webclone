import 'package:flutter/material.dart';

import 'data.dart';

class SelectedSong extends ChangeNotifier {
  Song? song;
  Color? color;

  changesong(Song song) {
    this.song = song;
    this.color = Colors.green;
    notifyListeners();
  }
}
