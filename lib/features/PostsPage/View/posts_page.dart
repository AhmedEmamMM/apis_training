import 'package:apis_final_form_testing/features/PostsPage/Logic/posts_cubit.dart';
import 'package:apis_final_form_testing/features/PostsPage/View/Widgets/posts_bloc_build.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostsPage extends StatefulWidget {
  const PostsPage({super.key});

  @override
  State<PostsPage> createState() => _PostsPageState();
}

class _PostsPageState extends State<PostsPage> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<PostsCubit>(context).getAllPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('P O S T S'),
        centerTitle: true,
      ),
      body: const PostsBlocBuilder(),
    );
  }
}
