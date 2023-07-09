import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/failures.dart';
import '../repository/posts_repository.dart';

@injectable
class DeletePostUseCase {
  final PostRepository postsRepository;

  DeletePostUseCase(this.postsRepository);

  Future<Either<Failure, Unit>> call(String id) async {
    return await postsRepository.deletePost(id);
  }
}
