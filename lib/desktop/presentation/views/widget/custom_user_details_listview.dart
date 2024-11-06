
import 'package:flutter/material.dart';
import 'package:resposive_dashboard/desktop/presentation/views/widget/custom_user_details_latest_transection_section.dart';

import '../../../data/model/user_detail_model.dart';

class CustomUserDetailsListView extends StatelessWidget {
  const CustomUserDetailsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.1,
      child: ListView.builder(
        itemCount: userList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) =>
            CustomUserDetailLatestTransectionSection(
          user: userList[index],
        ),
      ),
    );
  }
}
