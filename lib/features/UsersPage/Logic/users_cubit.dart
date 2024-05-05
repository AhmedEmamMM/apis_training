import 'package:apis_final_form_testing/features/UsersPage/Data/Repository/users_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '../Data/Models/user.dart';
part 'users_state.dart';

class UsersCubit extends Cubit<UsersState> {
  final UsersRepo usersRepo;
  UsersCubit(this.usersRepo) : super(UsersInitial());

  Future<void> getAllUsers() async {
    await usersRepo.getAllUsers().then((allUsers) {
      emit(UsersLoadedSuccefully(allUsers));
    });
  }

  void createUser(User user) async {
    emit(UsersCreatedLoading());
    await usersRepo.createUser(user).then((userr) {
      emit(UsersCreatedSuccefully(user));
    });
  }
}
