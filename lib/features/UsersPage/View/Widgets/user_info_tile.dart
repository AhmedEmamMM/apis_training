import 'package:apis_final_form_testing/features/UsersPage/Data/Models/user.dart';
import 'package:flutter/material.dart';

class UserInfoTile extends StatelessWidget {
  final User user;
  const UserInfoTile({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle =
        const TextStyle(fontWeight: FontWeight.bold, fontSize: 16);
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10, top: 10,bottom: 10),
      padding: const EdgeInsets.only(top: 15, bottom: 15),
      decoration: BoxDecoration(
        color: Colors.amber.shade300,
        border: Border.all(color: Colors.black, width: 2),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Text(user.id.toString(), style: textStyle),
          Text(user.name.toString(), style: textStyle),
          Text(user.email.toString(), style: textStyle),
          user.gender == 'male'
              ? Text(user.gender.toString(),
                  style: textStyle.copyWith(color: Colors.blue))
              : Text(user.gender.toString(),
                  style: textStyle.copyWith(color: Colors.pink)),
          user.status == 'active'
              ? Text(user.status.toString(),
                  style: textStyle.copyWith(color: Colors.green))
              : Text(user.status.toString(),
                  style: textStyle.copyWith(color: Colors.grey)),
        ],
      ),
    );
  }
}
