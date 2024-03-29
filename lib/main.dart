import 'dart:io';

import 'package:desktop_window/desktop_window.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:spotify_app/models/selectedsong.dart';

import 'widgets/shell.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (!kIsWeb && Platform.isLinux) {
    await DesktopWindow.setMinWindowSize(const Size(600, 500));
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SelectedSong(),
      child: MaterialApp(
        title: "Spotify App",
        themeMode: ThemeMode.dark,
        darkTheme: ThemeData(
          brightness: Brightness.dark,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.black,
            elevation: 0.0,
          ),
          scaffoldBackgroundColor: const Color(0xFF121212),
          backgroundColor: Colors.black,
          primaryColor: const Color(0xFF121212),
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
          fontFamily: GoogleFonts.montserrat().fontFamily,
          accentColor: const Color(0xFF1DB954),
          textTheme: TextTheme(
            headline2: const TextStyle(
              color: Colors.white,
              fontSize: 32.0,
              fontWeight: FontWeight.bold,
            ),
            headline4: TextStyle(
              fontSize: 12.0,
              color: Colors.grey[300],
              fontWeight: FontWeight.w500,
              letterSpacing: 2.0,
            ),
            bodyText1: TextStyle(
              fontSize: 14.0,
              color: Colors.grey[300],
              letterSpacing: 1.0,
              fontWeight: FontWeight.w600,
            ),
            bodyText2: TextStyle(
              color: Colors.grey[300],
              letterSpacing: 1.0,
            ),
          ),
        ),
        home: Shell(),
      ),
    );
  }
}
