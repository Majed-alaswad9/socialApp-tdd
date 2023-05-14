import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';
import 'package:social_app_tdd/features/posts/data/model/post_model.dart';

import '../../../../core/errors/failures.dart';

abstract class PostRepository {
  Future<Either<Failure, List<PostModel>>> getAllPosts();

  Future<Either<Failure, Unit>> addPost(String userId, String userName,
      String? userImage, String content, String date, File? image);

  Future<Either<Failure, Unit>> deletePost(String id);

  Future<Either<Failure, Unit>> editPost(
      String id, String content, File? image);

  Future<Either<Failure, File>> pickImage(ImageSource source);
  Future<Either<Failure, (String?, String?)>> getUserInformation();
}
