import 'package:apis_final_form_testing/features/UsersPage/Logic/users_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Data/Models/user.dart';
import 'users_info_list_view_builder.dart';

class UsersBlocBuilder extends StatelessWidget {
  const UsersBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    late List<User> allUsers;
    return BlocBuilder<UsersCubit, UsersState>(
      builder: (context, state) {
        if (state is UsersLoadedSuccefully) {
          allUsers = (state).allUsers;
          return UsersInfoListViewBuilder(
            allUsers: allUsers,
          );
        } else {
          return const Center(
              child: CircularProgressIndicator(color: Colors.red));
        }
      },
    );
  }
}
