import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:social_app_tdd/core/errors/failures.dart';
import 'package:social_app_tdd/features/posts/domain/repository/posts_repository.dart';

@injectable
class AddLikeUseCase {
  final PostRepository postRepository;

  AddLikeUseCase(this.postRepository);

  Future<Either<Failure, Unit>> call(String postId) async {
    return await postRepository.addLike(postId);
  }
}
