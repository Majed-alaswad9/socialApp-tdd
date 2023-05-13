import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';
import '../../../../core/errors/failures.dart';
import '../repository/posts_repository.dart';

class PickImageUseCase {
  final PostRepository postsRepository;

  PickImageUseCase(this.postsRepository);

  Future<Either<Failure, File>> call(ImageSource source) async {
    return await postsRepository.pickImage(source);
  }
}
