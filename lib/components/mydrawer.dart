import 'package:flutter/material.dart';
import 'package:musicmate/pages/settings.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          const DrawerHeader(
              child: Center(
            child: Icon(Icons.music_note, size: 50),
          )),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 12),
            child: ListTile(
              title: const Text("H O M E"),
              leading: const Icon(Icons.home, size: 20),
              onTap: () => Navigator.pop(context),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 0),
            child: ListTile(
              title: const Text("S E T T I N G S"),
              leading: const Icon(Icons.settings, size: 20),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SettingsPage(),
                    ));
              },
            ),
          ),
        ],
      ),
    );
  }
}
