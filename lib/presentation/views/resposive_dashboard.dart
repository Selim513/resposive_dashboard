import 'package:flutter/material.dart';
import 'package:resposive_dashboard/core/widgets/adabtive_layout_widgets.dart';
import 'package:resposive_dashboard/desktop/presentation/views/desktop_views.dart';
import 'package:resposive_dashboard/mobile/presentation/views/mobile_views.dart';
import 'package:resposive_dashboard/tablet/presentation/views/tablet_views.dart';

class ResposiveDashboardView extends StatelessWidget {
  const ResposiveDashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdabtiveLayoutWidgets(
          mobileLayout: (context) => const MobileViews(),
          tabletLayout: (context) => const TabletViews(),
          deskTopLayout: (context) => const DesktopViews()),
    );
  }
}
