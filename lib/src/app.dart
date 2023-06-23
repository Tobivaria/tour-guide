import 'package:fluent_ui/fluent_ui.dart';
import 'package:tour_guide/src/routes.dart';
import 'package:tour_guide/src/start_screen/start_screen.dart';

/// The Widget that configures your application.
class TourGuideApp extends StatelessWidget {
  const TourGuideApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FluentApp.router(
      title: "Tour Guide",
      builder: (context, child) => const StartScreen(),
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      routeInformationProvider: router.routeInformationProvider,
    );
  }
}
