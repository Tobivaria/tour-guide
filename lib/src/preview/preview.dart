import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class Preview extends StatelessWidget {
  final String data;

  const Preview({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Preview"),
        Html(
          data: data,
        ),
      ],
    );
  }
}
