import 'package:flutter/material.dart';
import 'package:resposive_dashboard/desktop/presentation/views/widget/custom_profile_view.dart';

class DesktopBody extends StatelessWidget {
  const DesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const Expanded(child: CustomProfileView()),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(top: 40, left: 24),
              child: Container(
                color: Colors.green,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(top: 40, left: 24),
              child: Container(
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
    );
  }
}
