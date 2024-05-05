class Todo {
  int? id;
  int? userID;
  String? title;
  String? status;

  Todo.fromJson(Map<String,dynamic> json){
    id = json['id'];
    userID = json['user_id'];
    title = json['title'];
    status = json['status'];
  }
}