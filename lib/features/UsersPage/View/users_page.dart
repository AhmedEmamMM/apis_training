import 'package:apis_final_form_testing/features/UsersPage/Data/Models/user.dart';
import 'package:apis_final_form_testing/features/UsersPage/Logic/users_cubit.dart';
import 'package:apis_final_form_testing/features/UsersPage/View/Widgets/users_bloc_build.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UsersPage extends StatefulWidget {
  const UsersPage({super.key});

  @override
  State<UsersPage> createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<UsersCubit>(context).getAllUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('U S E R S'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const UsersBlocBuilder(),
          const SizedBox(
            height: 30,
          ),
          BlocConsumer<UsersCubit, UsersState>(
            listener: (context, state) {},
            builder: (context, state) {
              return TextButton(
                  onPressed: () async {
                    context.read<UsersCubit>().createUser(
                          User(
                            id: '0000000000',
                            name: 'swainy',
                            email: 'swainy1010@gmail.com',
                            gender: 'male',
                            status: 'active',
                          ),
                        );
                  },
                  child: const Text('create User'));
            },
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
