part of 'comment_cubit.dart';

@immutable
sealed class CommentState {}

final class CommentInitial extends CommentState {}

class CommentsLoadedSuccesfully extends CommentState {
  final List<Comment> allComments;
  CommentsLoadedSuccesfully(this.allComments);
}
