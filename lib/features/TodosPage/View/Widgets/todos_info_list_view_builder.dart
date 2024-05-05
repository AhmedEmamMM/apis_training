import 'package:apis_final_form_testing/features/TodosPage/Data/Models/todo.dart';
import 'package:apis_final_form_testing/features/TodosPage/View/Widgets/todos_tile.dart';
import 'package:flutter/material.dart';

class TodosListViewBuilder extends StatelessWidget {
  final List<Todo> allTodo;
  const TodosListViewBuilder({
    super.key,
    required this.allTodo,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: allTodo.length,
      itemBuilder: (context, index) => TodosTile(todo: allTodo[index]),
    );
  }
}
