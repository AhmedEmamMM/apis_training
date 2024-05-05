import 'package:apis_final_form_testing/core/networking/web_services.dart';
import 'package:apis_final_form_testing/features/PostsPage/Data/models/post.dart';

class PostsRepo {
  final WebService webService;
  PostsRepo(this.webService);

  Future<List<Post>> getAllPosts() async {
    var allPosts = await webService.getAllPosts();
    return allPosts.map((post) => Post.fromJson(post)).toList();
  }
}
