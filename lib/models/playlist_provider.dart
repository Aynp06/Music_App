import 'package:flutter/material.dart';
import 'package:musicmate/models/song.dart';

class PlaylistProvider extends ChangeNotifier {
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
        audioPath: "assets/music/sarangi.mp3"),
  ];

  int? _currentSongIndex;

  List<Song> get playlist => _playlist;
  int? get currentSongIndex => _currentSongIndex;

  set currentSongIndex(int? newIndex) {
    _currentSongIndex = newIndex;
  }

  @override
  notifyListeners();
}
