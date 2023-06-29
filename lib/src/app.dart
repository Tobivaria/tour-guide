import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_acrylic/flutter_acrylic.dart' as flutter_acrylic;
import 'package:tour_guide/src/routes.dart';
import 'package:tour_guide/src/theme.dart';

/// The Widget that configures your application.
class TourGuideApp extends StatelessWidget {
  const TourGuideApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme();
    return FluentApp.router(
      title: "Tour Guide",
      builder: (context, child) {
        return Directionality(
          textDirection: appTheme.textDirection,
          child: NavigationPaneTheme(
            data: NavigationPaneThemeData(
              backgroundColor:
                  appTheme.windowEffect != flutter_acrylic.WindowEffect.disabled ? Colors.transparent : null,
            ),
            child: child!,
          ),
        );
      },
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      routeInformationProvider: router.routeInformationProvider,
      debugShowCheckedModeBanner: false,
      color: appTheme.color,
      darkTheme: FluentThemeData(
        brightness: Brightness.dark,
        accentColor: appTheme.color,
        visualDensity: VisualDensity.standard,
        focusTheme: FocusThemeData(
          glowFactor: is10footScreen(context) ? 2.0 : 0.0,
        ),
      ),
      theme: FluentThemeData(
        accentColor: appTheme.color,
        visualDensity: VisualDensity.standard,
        focusTheme: FocusThemeData(
          glowFactor: is10footScreen(context) ? 2.0 : 0.0,
        ),
      ),
    );
  }
}
