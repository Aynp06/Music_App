import 'package:flutter/material.dart';
import 'package:musicmate/components/mydrawer.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(child: Text("Welcome to MusicMate")),
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        shadowColor: Theme.of(context).colorScheme.inversePrimary,
        elevation: 5,
        title: const Center(child: Text("P L A Y L I S T")),
      ),
      drawer: const Mydrawer(),
    );
  }
}
