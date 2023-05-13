import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dartz/dartz_streaming.dart';
import 'package:image_picker/image_picker.dart';
import 'package:social_app_tdd/features/posts/data/model/get_post_model.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/network_info.dart';
import '../../domain/repository/posts_repository.dart';
import '../datasource/posts_local_datasource.dart';
import '../datasource/posts_remote_datasource.dart';

class PostsRepositoryImpl implements PostRepository {
  final PostRemoteDataSource postRemoteDataSource;
  final PostsLocalDataSource postsLocalDataSource;
  final NetworkInfo networkInfo;

  PostsRepositoryImpl(
      this.postRemoteDataSource, this.postsLocalDataSource, this.networkInfo);

  @override
  Future<Either<Failure, Unit>> addPost(String userId, String userName,
      String? userImage, String content, String date, File? image) async {
    if (await networkInfo.isConnected) {
      try {
        await postRemoteDataSource.addPost(
            userId, userName, userImage!, content, date, image);
        return const Right(unit);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(OfflineFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> deletePost(String id) async {
    if (await networkInfo.isConnected) {
      try {
        await postRemoteDataSource.deletePost(id);
        return const Right(unit);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(OfflineFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> editPost(
      String id, String content, File? image) async {
    if (await networkInfo.isConnected) {
      try {
        await postRemoteDataSource.editPost(id, content, image);
        return const Right(unit);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(OfflineFailure());
    }
  }

  @override
  Future<Either<Failure, List<PostModel>>> getAllPosts() async {
    if (await networkInfo.isConnected) {
      try {
        final remoterPosts = await postRemoteDataSource.getAllPosts();
        postsLocalDataSource.cachePosts(remoterPosts);
        return Right(remoterPosts);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(OfflineFailure());
    }
  }

  @override
  Future<Either<Failure, File>> pickImage(ImageSource source) async {
    final image = await ImagePicker().pickImage(source: source);
    if (image != null) {
      return Right(File(image.path));
    } else {
      return Left(NoImageFailure());
    }
  }

  @override
  Future<Either<Failure, (String?, String?)>> getUserInformation() async {
    try {
      String? nameUser;
      String? imageUser;
      (nameUser, imageUser) = await postsLocalDataSource.getLocalUser();
      return Right((nameUser, imageUser));
    } on EmptyCacheException {
      return Left(EmptyCacheFailure());
    }
  }
}