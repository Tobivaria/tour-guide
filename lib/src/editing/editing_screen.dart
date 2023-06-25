import 'package:flutter/material.dart';
import 'package:tour_guide/src/editing/step_widget.dart';
import 'package:tour_guide/src/preview/preview.dart';

class EditingScreen extends StatefulWidget {
  const EditingScreen({super.key});

  @override
  State<EditingScreen> createState() => _EditingScreenState();
}

class _EditingScreenState extends State<EditingScreen> {
  final String htmlData = """<h1>Title</h1><p> lore ipsom alalal hans</p>""";
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: StepWidget()),
        SizedBox(width: 240, child: Preview(data: htmlData))
      ],
    );
  }
}
