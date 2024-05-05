import 'package:apis_final_form_testing/core/constants/api_constants.dart';
import 'package:apis_final_form_testing/core/helpers/constants.dart';
import 'package:apis_final_form_testing/features/UsersPage/Data/Models/user.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class WebService {
  late Dio dio;
  WebService() {
    BaseOptions options = BaseOptions(
      baseUrl: baseURl,
      connectTimeout: const Duration(seconds: 60),
      receiveTimeout: const Duration(seconds: 60),
      receiveDataWhenStatusError: true,
    );
    dio = Dio(options);
  }

  Future<List<dynamic>> getAllUsers() async {
    var response = await dio.get('users');
    return response.data;
  }

  Future<List<dynamic>> getAllPosts() async {
    var response = await dio.get('posts');
    return response.data;
  }

  Future<List<dynamic>> getAllComments() async {
    var response = await dio.get('comments');
    return response.data;
  }

  Future<List<dynamic>> getAllTodos() async {
    var response = await dio.get('todos');
    return response.data;
  }

  Future<dynamic> createuser(User user) async {
    var response = await dio.post('users',
        data: user,
        options: Options(headers: {
          "Authorization": ApiKeys.authorizeToken,
        }));
    debugPrint('response.data: ${response.data}');
    return response.data;
  }
}
