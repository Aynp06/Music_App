import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:musicmate/theme/theme_provider.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("S E T T I N G S"),
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
        body: Container(
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(15)),
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Dark Mode",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
              ),
              CupertinoSwitch(
                  value: Provider.of<ThemeProvider>(context, listen: false)
                      .isDarkMode,
                  onChanged: (value) =>
                      Provider.of<ThemeProvider>(context, listen: false)
                          .toggleTheme())
            ],
          ),
        ));
  }
}
