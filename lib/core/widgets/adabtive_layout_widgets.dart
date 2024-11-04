import 'package:flutter/material.dart';

class AdabtiveLayoutWidgets extends StatelessWidget {
  const AdabtiveLayoutWidgets(
      {super.key,
      required this.mobileLayout,
      required this.tabletLayout,
      required this.deskTopLayout});

  final WidgetBuilder mobileLayout, tabletLayout, deskTopLayout;
  @override
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // double width = MediaQuery.sizeOf(context).width;
        // print(width);
        if (constraints.maxWidth < 500) {
          return mobileLayout(context);
        } else if (constraints.maxWidth < 1200) {
          return tabletLayout(context);
        } else {
          return deskTopLayout(context);
        }
      },
    );
  }
}
