import 'package:tour_guide/src/tour/tour.dart';

abstract class TourAdapter {
  Tour getTour();
  Map<String, dynamic> toJson();
}
