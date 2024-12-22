import 'package:flutter/material.dart';

class Newbox extends StatelessWidget {
  final Widget? child;

  const Newbox({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade600,
                blurRadius: 15,
                offset: const Offset(4, 4)),
            const BoxShadow(
                color: Colors.white, blurRadius: 15, offset: Offset(-4, -4)),
          ]),
      child: child,
    );
  }
}
