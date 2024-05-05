class Post {
  String? id;
  String? userID;
  String? title;
  String? body;

  Post.fromJson(Map<String, dynamic> json) {
    id = json['id'].toString();
    userID = json['user_id'].toString();
    title = json['title'];
    body = json['body'];
  }
}
