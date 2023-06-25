import 'package:fluent_ui/fluent_ui.dart';

import '../routes.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Placeholder(),
        Button(
          child: const Text("Edit"),
          onPressed: () => router.pushNamed("editing"),
        )
      ],
    );
  }
}
