import 'package:apis_final_form_testing/features/PostsPage/Logic/posts_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Data/models/post.dart';
import 'posts_list_view_builder.dart';

class PostsBlocBuilder extends StatelessWidget {
  const PostsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    late List<Post> allPosts;

    return BlocBuilder<PostsCubit, PostsState>(
      builder: (context, state) {
        if (state is PostsLoadedSuccefully) {
          allPosts = (state).allPosts;
          return PostsListViewBuilder(
            allPosts: allPosts,
          );
        } else {
          return const Center(
              child: CircularProgressIndicator(color: Colors.amber));
        }
      },
    );
  }
}
