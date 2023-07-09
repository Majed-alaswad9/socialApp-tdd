import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/failures.dart';
import '../../data/model/post_model/post_model.dart';
import '../repository/posts_repository.dart';

@injectable
class GetAllPostsUseCase {
  final PostRepository postsRepository;

  GetAllPostsUseCase(this.postsRepository);

  Future<Either<Failure, List<PostModel>>> call() async {
    return await postsRepository.getAllPosts();
  }
}
