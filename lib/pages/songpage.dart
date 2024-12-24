import 'package:flutter/material.dart';
import 'package:musicmate/components/newbox.dart';
import 'package:musicmate/models/playlist_provider.dart';
import 'package:provider/provider.dart';

class SongPage extends StatelessWidget {
  const SongPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<PlaylistProvider>(builder: (context, value, child) {
      final playlist = value.playlist;
      final currentsong = playlist[value.currentSongIndex ?? 0];
      return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.arrow_back)),
                const Text(
                  "Song Page",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.menu))
              ],
            ),
            const SizedBox(height: 20),
            Newbox(
                child: Column(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      currentsong.albumArtImagePath,
                    )),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            currentsong.songName,
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(currentsong.artistName)
                        ],
                      ),
                      Icon(
                        Icons.favorite,
                        color: Colors.red,
                      )
                    ],
                  ),
                )
              ],
            )),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 10, right: 18, left: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("1:45"),
                      Icon(Icons.shuffle),
                      Icon(Icons.repeat),
                      Text("3:50")
                    ],
                  ),
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                      thumbShape:
                          const RoundSliderThumbShape(enabledThumbRadius: 4)),
                  child: Slider(
                      inactiveColor: Colors.grey[400],
                      min: 0,
                      max: 100,
                      value: 50,
                      activeColor: const Color.fromARGB(255, 52, 151, 55),
                      onChanged: (value) {}),
                )
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                    child: GestureDetector(
                  onTap: () {},
                  child: const Newbox(child: Icon(Icons.skip_previous)),
                )),
                const SizedBox(width: 25),
                Expanded(
                    flex: 2,
                    child: GestureDetector(
                      onTap: () {},
                      child: const Newbox(child: Icon(Icons.play_arrow)),
                    )),
                const SizedBox(width: 25),
                Expanded(
                    child: GestureDetector(
                  onTap: () {},
                  child: const Newbox(child: Icon(Icons.skip_next)),
                )),
              ],
            )
          ]),
        )),
      );
    });
  }
}
