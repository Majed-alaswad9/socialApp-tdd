import 'package:dartz/dartz.dart';
import 'package:social_app_tdd/features/posts/data/model/post_model.dart';

import '../../../../core/errors/failures.dart';
import '../repository/posts_repository.dart';

class GetAllPostsUseCase {
  final PostRepository postsRepository;

  GetAllPostsUseCase(this.postsRepository);

  Future<Either<Failure, List<PostModel>>> call() async {
    return await postsRepository.getAllPosts();
  }
}
