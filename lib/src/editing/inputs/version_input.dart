import 'package:fluent_ui/fluent_ui.dart';

enum TourVersion { min, max }

class VersionInput extends StatelessWidget {
  final TourVersion version;

  final String _min = "minimum version";
  final String _max = "maximum version";

  const VersionInput({super.key, required this.version});

  void versionChanged(int? newVal) {
    // TODO
  }

  @override
  Widget build(BuildContext context) {
    return InfoLabel(
      label: version == TourVersion.max ? _max : _min,
      child: NumberBox(
        value: 123,
        onChanged: versionChanged,
        mode: SpinButtonPlacementMode.inline,
      ),
    );
  }
}
