import 'package:apis_final_form_testing/features/CommentsPage/Data/Repo/comments_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../Data/Models/comment.dart';

part 'comment_state.dart';

class CommentCubit extends Cubit<CommentState> {
  final CommentsRepo commentsRepo;
  CommentCubit(this.commentsRepo) : super(CommentInitial());

  void getAllComments() async {
    await commentsRepo.getAllComments().then((allComments) {
      emit(CommentsLoadedSuccesfully(allComments));
    });
  }
}
