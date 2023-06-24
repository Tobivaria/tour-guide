import 'package:tour_guide/src/tour/step_content.dart';

class TourStep {
  final String selector;
  final String title;
  final StepContent content;

  TourStep({
    required this.selector,
    required this.title,
    required this.content,
  });
}
