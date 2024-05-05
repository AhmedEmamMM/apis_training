import 'package:apis_final_form_testing/core/networking/web_services.dart';
import 'package:apis_final_form_testing/features/CommentsPage/Data/Models/comment.dart';

class CommentsRepo {
  final WebService webService;
  CommentsRepo(this.webService);

  Future<List<Comment>> getAllComments() async {
    var allComments = await webService.getAllComments();
    return allComments.map((comment) => Comment.fromJson(comment)).toList();
  }
}
