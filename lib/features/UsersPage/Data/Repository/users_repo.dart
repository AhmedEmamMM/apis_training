import 'package:apis_final_form_testing/core/networking/web_services.dart';
import 'package:apis_final_form_testing/features/UsersPage/Data/Models/user.dart';

class UsersRepo {
  final WebService webService;
  UsersRepo(this.webService);

  Future<List<User>> getAllUsers() async {
    var allusers = await webService.getAllUsers();
    return allusers.map((user) => User.fromJson(user)).toList();
  }

  Future<User> createUser(User user) async {
    var userr = await webService.createuser(user);
    return User.fromJson(userr);
  }
}
