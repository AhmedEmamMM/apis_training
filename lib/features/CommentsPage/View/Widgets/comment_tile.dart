import 'package:apis_final_form_testing/features/CommentsPage/Data/Models/comment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommentTile extends StatelessWidget {
  final Comment comment;
  const CommentTile({super.key, required this.comment});

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle =
        const TextStyle(fontWeight: FontWeight.bold, fontSize: 16);
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.deepPurple,
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(16)),
      child: Column(
        children: [
          Text(comment.id.toString(), style: textStyle),
          Text(comment.postID.toString(), style: textStyle),
          Text(comment.name.toString(), style: textStyle),
          Text(comment.email.toString(), style: textStyle),
          15.verticalSpace,
          Text(comment.body.toString(), style: textStyle),
        ],
      ),
    );
  }
}
