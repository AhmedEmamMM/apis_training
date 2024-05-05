import 'package:apis_final_form_testing/core/Routes/routes_name.dart';
import 'package:flutter/material.dart';

class CustomGridTile extends StatelessWidget {
  final String text;
  final IconData? iconData;
  const CustomGridTile({
    super.key,
    required this.text,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        switch (text) {
          case 'Users':
            Navigator.pushNamed(context, usersPage);
            break;
          case 'Posts':
            Navigator.pushNamed(context, postsPage);
            break;
          case 'Comments':
            Navigator.pushNamed(context, commentsPage);
            break;
          case 'Todos':
            Navigator.pushNamed(context, todosPage);
            break;
          case 'AllApis':
            Navigator.pushNamed(context, allApisPage);
            break;
        }
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 10, right: 20),
        child: Container(
          height: 90,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.3),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            children: [
              Icon(
                iconData,
                color: Colors.blueGrey,
                size: 100,
              ),
              const Spacer(),
              Container(
                width: double.infinity,
                color: Colors.black26,
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
