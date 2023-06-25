import 'package:fluent_ui/fluent_ui.dart';

class TextInput extends StatelessWidget {
  final String label;
  final String placeholder;

  const TextInput({super.key, required this.label, required this.placeholder});

  @override
  Widget build(BuildContext context) {
    return InfoLabel(
      label: label,
      child: TextBox(
        placeholder: placeholder,
        expands: false,
      ),
    );
  }
}
