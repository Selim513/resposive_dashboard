import 'package:flutter/material.dart';
import 'package:resposive_dashboard/views/presentation/views/widget/custom_user_details_latest_transection_section.dart';

import '../../data/models/user_detail_model.dart';

class CustomUserDetailsListView extends StatelessWidget {
  const CustomUserDetailsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: userList
            .map(
              (e) => IntrinsicWidth(
                child: CustomUserDetailLatestTransectionSection(user: e),
              ),
            )
            .toList(),
      ),
    );
  }
}
