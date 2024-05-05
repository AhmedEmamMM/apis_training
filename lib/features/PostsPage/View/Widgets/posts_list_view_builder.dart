import 'package:flutter/material.dart';

import '../../Data/models/post.dart';
import 'post_tile.dart';

class PostsListViewBuilder extends StatelessWidget {
  final List<Post> allPosts;
  const PostsListViewBuilder({super.key, required this.allPosts});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: allPosts.length,
      itemBuilder: (context, index) => PostTile(
        post: allPosts[index],
      ),
    );
  }
}
