import 'package:apis_final_form_testing/features/PostsPage/Data/repo/posts_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../Data/models/post.dart';

part 'posts_state.dart';

class PostsCubit extends Cubit<PostsState> {
  final PostsRepo postsRepo;
  PostsCubit(this.postsRepo) : super(PostsInitial());

  void getAllPosts() async {
    await postsRepo.getAllPosts().then((allPosts) {
      emit(PostsLoadedSuccefully(allPosts));
    });
  }
}
