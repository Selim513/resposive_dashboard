import 'package:flutter/material.dart';

import 'custom_user_details.dart';

class CustomUserInfoDrawer extends StatelessWidget {
  const CustomUserInfoDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: CustomUserDetails(
        image: 'person1',
        title: 'Ahmed Selim',
        subtitle: 'ahmedshaabanselem@gmail.com',
      ),
    );
  }
}
