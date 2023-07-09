import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/failures.dart';
import '../repository/posts_repository.dart';

@injectable
class AddPostUseCase {
  final PostRepository postsRepository;

  AddPostUseCase(this.postsRepository);

  Future<Either<Failure, Unit>> call(String userId, String userName,
      String? userImage, String content, String date, File? image) async {
    return await postsRepository.addPost(
        userId, userName, userImage, content, date, image);
  }
}
