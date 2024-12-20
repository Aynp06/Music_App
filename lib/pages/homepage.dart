import 'package:flutter/material.dart';
import 'package:musicmate/components/mydrawer.dart';
import 'package:musicmate/models/playlist_provider.dart';
import 'package:musicmate/models/song.dart';
import 'package:musicmate/pages/songpage.dart';

import 'package:provider/provider.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  late final dynamic playlistProvider;

  @override
  void initState() {
    super.initState();

    playlistProvider = Provider.of<PlaylistProvider>(context, listen: false);
  }

  void goToSong(int songIndex) {
    playlistProvider.currentSongIndex = songIndex;

    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SongPage(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.primary,
            title: const Text("P L A Y L I S T")),
        drawer: const Mydrawer(),
        body: Consumer<PlaylistProvider>(builder: (context, value, child) {
          final List<Song> playlist = value.playlist;

          return ListView.builder(
              itemCount: playlist.length,
              itemBuilder: (context, index) {
                final Song song = playlist[index];
                return ListTile(
                  title: Text(song.songName,
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text(
                    song.artistName,
                    style: const TextStyle(color: Colors.grey),
                  ),
                  leading: Image.asset(song.albumArtImagePath),
                  onTap: () => goToSong(index),
                );
              });
        }));
  }
}
