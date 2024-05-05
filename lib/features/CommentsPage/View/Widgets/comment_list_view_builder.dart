import 'package:flutter/material.dart';

import '../../Data/Models/comment.dart';
import 'comment_tile.dart';

class CommentListViewBuilder extends StatelessWidget {
  final List<Comment> allComments;
  const CommentListViewBuilder({super.key, required this.allComments});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: allComments.length,
      itemBuilder: (context, index) => CommentTile(comment: allComments[index]),
    );
  }
}
