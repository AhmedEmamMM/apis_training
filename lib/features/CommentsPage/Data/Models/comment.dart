class Comment {
  int? id;
  int? postID;
  String? name;
  String? email;
  String? body;

  Comment.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    postID = json['post_id'];
    name = json['name'];
    email = json['email'];
    body = json['body'];
  }
}
