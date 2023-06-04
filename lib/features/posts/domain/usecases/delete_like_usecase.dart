import 'package:dartz/dartz.dart';
import 'package:social_app_tdd/core/errors/failures.dart';
import 'package:social_app_tdd/features/posts/domain/repository/posts_repository.dart';

class DeleteLikeUseCase{
  final PostRepository postRepository;

  DeleteLikeUseCase(this.postRepository);

  Future<Either<Failure,Unit>> call(String postId)async{
    return await postRepository.deleteLike(postId);
  }
}