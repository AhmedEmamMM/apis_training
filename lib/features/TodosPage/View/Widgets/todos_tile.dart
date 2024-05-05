import 'package:apis_final_form_testing/features/TodosPage/Data/Models/todo.dart';
import 'package:flutter/material.dart';

class TodosTile extends StatelessWidget {
  final Todo todo;
  const TodosTile({super.key, required this.todo});

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle =
        const TextStyle(fontWeight: FontWeight.bold, fontSize: 16);
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
      padding: const EdgeInsets.only(top: 15, bottom: 15, right: 10, left: 10),
      decoration: BoxDecoration(
        color: Colors.amber.shade300,
        border: Border.all(color: Colors.black, width: 2),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Text(todo.id.toString(), style: textStyle),
          Text(todo.userID.toString(), style: textStyle),
          Text(todo.title.toString(), style: textStyle),
          todo.status == 'completed'
              ? Text(todo.status.toString(),
                  style: textStyle.copyWith(color: Colors.green))
              : Text(todo.status.toString(),
                  style: textStyle.copyWith(color: Colors.orange))
        ],
      ),
    );
  }
}
