import 'package:flutter/material.dart';
import 'package:musicmate/components/newbox.dart';
import 'package:musicmate/models/playlist_provider.dart';
import 'package:provider/provider.dart';

class SongPage extends StatelessWidget {
  const SongPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<PlaylistProvider>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.arrow_back)),
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
                      "assets/images/sarangi.jpg",
                    )),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("SUSHANT KC"),
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
                      Text("0:00"),
                      Icon(Icons.shuffle),
                      Icon(Icons.repeat),
                      Text("3:50")
                    ],
                  ),
                ),
                Slider(
                    inactiveColor: Colors.grey[400],
                    min: 0,
                    max: 100,
                    value: 50,
                    activeColor: const Color.fromARGB(255, 52, 151, 55),
                    onChanged: (value) {})
              ],
            ),
          ]),
        )),
      ),
    );
  }
}
