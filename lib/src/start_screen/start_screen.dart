import 'package:flutter/material.dart';
import 'package:tour_guide/src/preview/preview.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Placeholder(),
        SizedBox(
          child: const Preview(),
          width: 300,
        )
      ],
    );
  }
}
