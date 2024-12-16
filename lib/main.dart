import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; // Ensure the provider package is imported
import 'package:musicmate/theme/theme_provider.dart';
import 'pages/homepage.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(), // Instantiate ThemeProvider
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: const Homepage(),
          theme: themeProvider.themeData, // Safely access themeData
        );
      },
    );
  }
}
