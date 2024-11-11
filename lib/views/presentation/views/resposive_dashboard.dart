import 'package:flutter/material.dart';
import 'package:resposive_dashboard/core/widgets/adabtive_layout_widgets.dart';
import 'package:resposive_dashboard/views/presentation/views/desktop_views.dart';
import 'package:resposive_dashboard/views/presentation/views/tablet_views.dart';

import 'mobile_views.dart';

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
