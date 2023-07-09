import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:social_app_tdd/core/errors/failures.dart';
import 'package:social_app_tdd/features/posts/domain/repository/posts_repository.dart';

import '../../data/model/user_model/user_model.dart';

@injectable
class GetLikesUseCase {
  final PostRepository postRepository;

  GetLikesUseCase(this.postRepository);

  Future<Either<Failure, List<UserModel>>> call(String postId) async {
    return await postRepository.getLikes(postId);
  }
}
