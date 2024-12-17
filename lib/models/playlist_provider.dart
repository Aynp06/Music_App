import 'package:flutter/material.dart';
import 'package:musicmate/models/song.dart';

class PlaylistProvider extends ChangeNotifier {
  // ignore: unused_field
  final List<Song> _playlist = [
    Song(
        //song 1
        songName: "Ve Kamleya",
        artistName: "Arijit Singh",
        albumArtImagePath: "assets/images/kamleya.jpg",
        audioPath: "assets/music/kamleya.mp3"),
    Song(
        songName: "Sarangi",
        artistName: "Sushant KC",
        albumArtImagePath: "assets/images/sarangi.jpg",
        audioPath: "assets/music/sarangi.mp3")
  ];
}

int? _currentsongindex;

Type get playlist => _playlist;

// ignore: camel_case_types
class _playlist {
}


int? get Currentsongindex => _currentsongindex;
