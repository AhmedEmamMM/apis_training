import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Data/models/post.dart';

class PostTile extends StatelessWidget {
  final Post post;
  const PostTile({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle =
        const TextStyle(fontWeight: FontWeight.bold, fontSize: 16);
    return Container(
      margin: const EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
      padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        border: Border.all(color: Colors.black, width: 2),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Text(post.id.toString(), style: textStyle),
          Text(post.userID.toString(), style: textStyle),
          Text(post.title.toString(), style: textStyle),
          15.verticalSpace,
          Text("' ${post.body.toString()} '",
              style: textStyle.copyWith(color: Colors.amber)),
        ],
      ),
    );
  }
}
