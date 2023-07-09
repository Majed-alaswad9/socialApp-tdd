import 'dart:io';

import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../data/model/post_model/post_model.dart';
import '../../data/model/user_model/user_model.dart';

abstract class PostRepository {
  Future<Either<Failure, List<PostModel>>> getAllPosts();

  Future<Either<Failure, Unit>> addLike(String postId);

  Future<Either<Failure, Unit>> deleteLike(String postId);

  Future<Either<Failure, List<UserModel>>> getLikes(String postId);

  Future<Either<Failure, UserModel>> getUserInformation(String uId);

  Future<Either<Failure, Unit>> addPost(String userId, String userName,
      String? userImage, String content, String date, File? image);

  Future<Either<Failure, Unit>> deletePost(String id);

  Future<Either<Failure, Unit>> editPost(
      String id, String content, File? image);
}
