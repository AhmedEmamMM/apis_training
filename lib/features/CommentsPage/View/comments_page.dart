import 'package:apis_final_form_testing/features/CommentsPage/Logic/comment_cubit.dart';
import 'package:apis_final_form_testing/features/CommentsPage/View/Widgets/comment_bloc_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CommentsPage extends StatefulWidget {
  const CommentsPage({super.key});

  @override
  State<CommentsPage> createState() => _CommentsPageState();
}

class _CommentsPageState extends State<CommentsPage> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<CommentCubit>(context).getAllComments();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('C O M M E N T S'),
        centerTitle: true,
      ),
      body: const CommentsBlocBuilder(),
    );
  }
}
