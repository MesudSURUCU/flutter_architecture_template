import 'package:flutter/widgets.dart';
import 'package:responsive_framework/responsive_framework.dart';

/// Make a adaptive view for mobile platform
final class AdaptMobileView extends StatelessWidget {
  /// Define your custom widget for mobile platform
  /// mobile, tablet,
  const AdaptMobileView({
    required this.phone,
    required this.tablet,
    super.key,
  });

  /// Define your custom widget for mobile
  final Widget phone;

  /// Define your custom widget for tablet
  final Widget tablet;

  @override
  Widget build(BuildContext context) {
    if (ResponsiveBreakpoints.of(context).isMobile) return phone;
    if (ResponsiveBreakpoints.of(context).isTablet) return tablet;

    return tablet;
  }
}
