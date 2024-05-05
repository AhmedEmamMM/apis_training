part of 'users_cubit.dart';

@immutable
sealed class UsersState {}

final class UsersInitial extends UsersState {}

class UsersLoadedSuccefully extends UsersState {
  final List<User> allUsers;
  UsersLoadedSuccefully(this.allUsers);
}

class UsersCreatedSuccefully extends UsersState {
  final User user;
  UsersCreatedSuccefully(this.user);
}

class UsersCreatedLoading extends UsersState {}

class UsersCreatedfailure extends UsersState {}
