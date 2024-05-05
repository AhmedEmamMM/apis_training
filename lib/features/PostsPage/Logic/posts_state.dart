part of 'posts_cubit.dart';

@immutable
sealed class PostsState {}

final class PostsInitial extends PostsState {}

class PostsLoadedSuccefully extends PostsState {
  final List<Post> allPosts;
  PostsLoadedSuccefully(this.allPosts);
}
