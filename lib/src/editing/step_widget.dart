import 'package:fluent_ui/fluent_ui.dart';
import 'package:tour_guide/src/editing/inputs/text_input.dart';
import 'package:tour_guide/src/editing/inputs/version_input.dart';

class StepWidget extends StatefulWidget {
  const StepWidget({super.key});

  @override
  State<StepWidget> createState() => _StepWidgetState();
}

class _StepWidgetState extends State<StepWidget> {
  @override
  Widget build(BuildContext context) {
    return const ScaffoldPage(
      content: Column(
        children: [
          TextInput(
              label: "Selector",
              placeholder: "Specify a unique selector, e.g. an id"),
          VersionInput(
            version: TourVersion.min,
          ),
          VersionInput(
            version: TourVersion.max,
          ),
          TextInput(
              label: "English",
              placeholder:
                  "Enter html content, tags, etc. see preview to the right"),
          TextInput(
              label: "German",
              placeholder:
                  "Enter html content, tags, etc. see preview to the right"),
        ],
      ),
    );
  }
}
