import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/failures.dart';
import '../repository/posts_repository.dart';

@injectable
class EditPostUseCase {
  final PostRepository postsRepository;

  EditPostUseCase(this.postsRepository);

  Future<Either<Failure, Unit>> call(
      String id, String content, File? image) async {
    return await postsRepository.editPost(id, content, image);
  }
}
