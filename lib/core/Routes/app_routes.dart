import 'package:apis_final_form_testing/core/Routes/routes_name.dart';
import 'package:apis_final_form_testing/features/CommentsPage/Data/Repo/comments_repo.dart';
import 'package:apis_final_form_testing/features/CommentsPage/Logic/comment_cubit.dart';
import 'package:apis_final_form_testing/features/CommentsPage/View/comments_page.dart';
import 'package:apis_final_form_testing/features/HomePage/View/home_page.dart';
import 'package:apis_final_form_testing/features/PostsPage/Data/repo/posts_repo.dart';
import 'package:apis_final_form_testing/features/PostsPage/Logic/posts_cubit.dart';
import 'package:apis_final_form_testing/features/PostsPage/View/posts_page.dart';
import 'package:apis_final_form_testing/features/SplashScreen/View/splash_page.dart';
import 'package:apis_final_form_testing/features/TodosPage/Data/Repo/todos_repo.dart';
import 'package:apis_final_form_testing/features/TodosPage/Logic/todos_cubit.dart';
import 'package:apis_final_form_testing/features/TodosPage/View/todos_page.dart';
import 'package:apis_final_form_testing/features/UsersPage/View/users_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/UsersPage/Data/Repository/users_repo.dart';
import '../../features/UsersPage/Logic/users_cubit.dart';
import '../networking/web_services.dart';

class AppRoutes {
  AppRoutes();

  late UsersRepo usersRepo;
  late UsersCubit usersCubit;

  late PostsRepo postsRepo;
  late PostsCubit postsCubit;

  late CommentsRepo commentsRepo;
  late CommentCubit commentCubit;

  late TodosRepo todosRepo;
  late TodosCubit todosCubit;

  Route? onGeneratingRoutes(RouteSettings settings) {
    // users repositry and cubit
    usersRepo = UsersRepo(WebService());
    usersCubit = UsersCubit(usersRepo);
    // posts repositry and cubit
    postsRepo = PostsRepo(WebService());
    postsCubit = PostsCubit(postsRepo);
    // comments repositry and cubit
    commentsRepo = CommentsRepo(WebService());
    commentCubit = CommentCubit(commentsRepo);
    // comments repositry and cubit
    todosRepo = TodosRepo(WebService());
    todosCubit = TodosCubit(todosRepo);

    switch (settings.name) {
      case splashScreen:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );
      case homepage:
        return MaterialPageRoute(
          builder: (context) => const HomePage(),
        );
      case usersPage:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => usersCubit,
            child: const UsersPage(),
          ),
        );
      case postsPage:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => postsCubit,
            child: const PostsPage(),
          ),
        );
      case commentsPage:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => commentCubit,
            child: const CommentsPage(),
          ),
        );
      case todosPage:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => todosCubit,
            child: const TodosPage(),
          ),
        );
    }
    return null;
  }
}
