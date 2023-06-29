import 'package:fluent_ui/fluent_ui.dart';
import 'package:tour_guide/src/harbor/harbor_notification_popup.dart';

class HarborDock extends StatelessWidget {
  const HarborDock({super.key});

  @override
  Widget build(BuildContext context) {
    final notifications = [];

    return Positioned(
      top: 20,
      right: 20,
      child: Column(
        children: [
          for (int i = 0; i < notifications.length; i++)
            if (notifications[i].isVisible == true)
              HarborNotificationPopup(
                notification: notifications[i],
                onDismiss: () => {},
                key: ValueKey(i),
              )
        ],
      ),
    );
  }
}
