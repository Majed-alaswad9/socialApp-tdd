import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../repository/posts_repository.dart';

class DeletePostUseCase {
  final PostRepository postsRepository;

  DeletePostUseCase(this.postsRepository);

  Future<Either<Failure, Unit>> call(String id) async {
    return await postsRepository.deletePost(id);
  }
}
