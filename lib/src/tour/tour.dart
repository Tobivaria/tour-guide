import 'package:tour_guide/src/tour/tour_step.dart';

class Tour {
  final int minVersion;
  final int maxVersion;
  final List<TourStep> steps;

  Tour({
    required this.minVersion,
    required this.maxVersion,
    required this.steps,
  });
}
