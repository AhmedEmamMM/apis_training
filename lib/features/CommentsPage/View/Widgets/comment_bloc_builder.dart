import 'package:apis_final_form_testing/features/CommentsPage/Logic/comment_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Data/Models/comment.dart';
import 'comment_list_view_builder.dart';

class CommentsBlocBuilder extends StatelessWidget {
  const CommentsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    late List<Comment> allComments;
    return BlocBuilder<CommentCubit, CommentState>(
      builder: (context, state) {
        if (state is CommentsLoadedSuccesfully) {
          allComments = (state).allComments;
          return CommentListViewBuilder(allComments: allComments);
        } else {
          return const Center(
              child: CircularProgressIndicator(color: Colors.amber));
        }
      },
    );
  }
}
