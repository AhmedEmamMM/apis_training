import 'package:apis_final_form_testing/features/TodosPage/Logic/todos_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Widgets/todos_bloc_build.dart';

class TodosPage extends StatefulWidget {
  const TodosPage({super.key});

  @override
  State<TodosPage> createState() => _TodosPageState();
}

class _TodosPageState extends State<TodosPage> {

  @override
  void initState() {
    super.initState();
    BlocProvider.of<TodosCubit>(context).getAllTodos();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('T O D O S'),
        centerTitle: true,
      ),
      body: const TodosBlocBuilder(),
    );
  }
}
