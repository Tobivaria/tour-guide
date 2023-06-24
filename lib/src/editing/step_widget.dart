import 'package:fluent_ui/fluent_ui.dart';

class StepWidget extends StatefulWidget {
  const StepWidget({super.key});

  @override
  State<StepWidget> createState() => _StepWidgetState();
}

class _StepWidgetState extends State<StepWidget> {
  void _minVersionChanged(int? newVal) {
    // TODO
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InfoLabel(
          label: 'Enter your name:',
          child: const TextBox(
            placeholder: 'Name',
            expands: false,
          ),
        ),
        NumberBox(
          value: 123,
          onChanged: _minVersionChanged,
          mode: SpinButtonPlacementMode.inline,
        ),
      ],
    );
  }
}
