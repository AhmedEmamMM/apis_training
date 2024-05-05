import 'package:apis_final_form_testing/core/networking/web_services.dart';
import 'package:apis_final_form_testing/features/TodosPage/Data/Models/todo.dart';

class TodosRepo {
  final WebService webService;
  TodosRepo(this.webService);

  Future<List<Todo>> getAllTodos() async {
    var allTodos = await webService.getAllTodos();
    return allTodos.map((todo) => Todo.fromJson(todo)).toList();
  }
}
