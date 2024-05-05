import 'package:apis_final_form_testing/features/TodosPage/Data/Repo/todos_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../Data/Models/todo.dart';

part 'todos_state.dart';

class TodosCubit extends Cubit<TodosState> {
  final TodosRepo todosRepo;
  TodosCubit(this.todosRepo) : super(TodosInitial());

  void getAllTodos() async {
    await todosRepo.getAllTodos().then((allTodos) {
      emit(TodosLoadedSuccesfully(allTodos));
    });
  }
}
