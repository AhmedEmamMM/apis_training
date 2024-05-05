class User {
  String? id;
  String? name;
  String? email;
  String? gender;
  String? status;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.gender,
    required this.status,
  });

   User.fromJson(Map<String, dynamic> json) {
    id = json['id'].toString();
    name = json['name'];
    email = json['email'];
    gender = json['gender'];
    status = json['status'];
  }
}
