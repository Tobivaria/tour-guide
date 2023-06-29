import 'package:fluent_ui/fluent_ui.dart';
import 'package:tour_guide/src/harbor/harbor_notification.dart';

class HarborNotificationPopup extends StatefulWidget {
  const HarborNotificationPopup({
    required this.notification,
    required this.onDismiss,
    Key? key,
  }) : super(key: key);
  final HarborNotification notification;
  final VoidCallback onDismiss;

  @override
  State<HarborNotificationPopup> createState() => _HarborNotificationPopupState();
}

class _HarborNotificationPopupState extends State<HarborNotificationPopup> {
  double _opacity = 1;
  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 300),
      opacity: _opacity,
      onEnd: widget.onDismiss,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: InfoBar(
          title: Text(widget.notification.title),
          content: Text(widget.notification.message),
          severity: widget.notification.severity,
          onClose: () => setState(() {
            _opacity = 0;
          }),
        ),
      ),
    );
  }
}
