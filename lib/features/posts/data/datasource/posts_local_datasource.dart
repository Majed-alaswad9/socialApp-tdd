import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/errors/exceptions.dart';

import '../model/post_model/post_model.dart';

abstract class PostsLocalDataSource {
  Future<List<PostModel>> getLocalPosts();
  Future<Unit> cachePosts(List<PostModel> posts);
  Future<(String?, String?)> getLocalUser();
}

@Injectable(as: PostsLocalDataSource)
class PostsLocalDataSourceImplement implements PostsLocalDataSource {
  final SharedPreferences sharedPreferences;

  PostsLocalDataSourceImplement(this.sharedPreferences);
  @override
  Future<Unit> cachePosts(List<PostModel> posts) {
    List postModelToJson = posts.map<Map<String, dynamic>>((e) {
      return e.toJson();
    }).toList();
    sharedPreferences.setString("CACHE_POSTS", json.encode(postModelToJson));
    return Future.value(unit);
  }

  @override
  Future<List<PostModel>> getLocalPosts() {
    final jsonString = sharedPreferences.getString("CACHE_POSTS");
    if (jsonString!.isNotEmpty) {
      List decodeJsonData = json.decode(jsonString);
      List<PostModel> postsModel = decodeJsonData.map<PostModel>((e) {
        return PostModel.fromLocalJson(e);
      }).toList();
      return Future.value(postsModel);
    } else {
      throw EmptyCacheException();
    }
  }

  @override
  Future<(String?, String?)> getLocalUser() async {
    String? userName = sharedPreferences.getString('USER_NAME');
    String? imageUser = sharedPreferences.getString('USER_IMAGE');
    return (userName, imageUser);
  }
}
