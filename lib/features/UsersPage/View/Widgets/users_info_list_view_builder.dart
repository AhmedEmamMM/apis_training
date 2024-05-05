import 'package:apis_final_form_testing/features/UsersPage/View/Widgets/user_info_tile.dart';
import 'package:flutter/material.dart';

import '../../Data/Models/user.dart';

class UsersInfoListViewBuilder extends StatelessWidget {
  final List<User> allUsers;
  const UsersInfoListViewBuilder({
    super.key,
    required this.allUsers,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: allUsers.length,
        itemBuilder: (context, index) => UserInfoTile(user: allUsers[index]),
      ),
    );
  }
}
