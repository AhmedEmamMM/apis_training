import 'package:apis_final_form_testing/features/TodosPage/Data/Models/todo.dart';
import 'package:apis_final_form_testing/features/TodosPage/Logic/todos_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'todos_info_list_view_builder.dart';

class TodosBlocBuilder extends StatelessWidget {
  const TodosBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    late List<Todo> allTodo;
    return BlocBuilder<TodosCubit, TodosState>(
      builder: (context, state) {
        if (state is TodosLoadedSuccesfully) {
          allTodo = (state).allTodos;
          return TodosListViewBuilder(
            allTodo: allTodo,
          );
        } else {
          return const Center(
              child: CircularProgressIndicator(color: Colors.red));
        }
      },
    );
  }
}
