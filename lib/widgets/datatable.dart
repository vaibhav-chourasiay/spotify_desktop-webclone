import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:spotify_app/models/selectedsong.dart';

class ShowDataTable extends StatelessWidget {
  final List l;

  const ShowDataTable({Key? key, required this.l}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final mymodel = context.watch<SelectedSong>();
    return DataTable(
        showCheckboxColumn: false,
        columns: const [
          DataColumn(label: Text("TITLE")),
          DataColumn(label: Text("ARTIST")),
          DataColumn(label: Text("ALBUM")),
          DataColumn(
            label: Icon(Icons.access_time),
          ),
        ],
        rows: l.map((e) {
          // mymodel.changesong(e);
          return DataRow(
              selected: (context.watch<SelectedSong>().song?.id == e.id)
                  ? true
                  : false,
              onSelectChanged: (t) {
                context.read<SelectedSong>().changesong(e);
              },
              cells: [
                DataCell(
                  Text(
                    "${e.title}",
                    style: TextStyle(
                      color: (mymodel.song?.id == e.id)
                          ? mymodel.color
                          : Colors.white,
                    ),
                  ),
                ),
                DataCell(
                  Text(
                    "${e.artist}",
                    style: TextStyle(
                      color: (mymodel.song?.id == e.id)
                          ? mymodel.color
                          : Colors.white,
                    ),
                  ),
                ),
                DataCell(
                  Text(
                    "${e.album}",
                    style: TextStyle(
                      color: (mymodel.song?.id == e.id)
                          ? mymodel.color
                          : Colors.white,
                    ),
                  ),
                ),
                DataCell(
                  Text(
                    "${e.duration}",
                    style: TextStyle(
                      color: (mymodel.song?.id == e.id)
                          ? mymodel.color
                          : Colors.white,
                    ),
                  ),
                ),
              ]);
        }).toList());
  }
}
