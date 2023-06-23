import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class Preview extends StatelessWidget {
  const Preview({super.key});

// TODO what happens when there is an error within the html template?
  final data = """<h1>Title</h1><p> lore ipsom alalal hans</p>""";

  @override
  Widget build(BuildContext context) {
    return Html(
      data: data,
    );
  }
}
