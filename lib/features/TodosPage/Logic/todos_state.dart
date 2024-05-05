part of 'todos_cubit.dart';

@immutable
sealed class TodosState {}

final class TodosInitial extends TodosState {}

class TodosLoadedSuccesfully extends TodosState {
  final List<Todo> allTodos;
  TodosLoadedSuccesfully(this.allTodos);
}
