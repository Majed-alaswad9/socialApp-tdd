import 'package:dartz/dartz.dart';
import 'package:social_app_tdd/core/errors/failures.dart';
import 'package:social_app_tdd/features/posts/data/model/user_model.dart';
import 'package:social_app_tdd/features/posts/domain/repository/posts_repository.dart';

class GetLikesUseCase{
  final PostRepository postRepository;

  GetLikesUseCase(this.postRepository);

  Future<Either<Failure,List<UserModel>>> call(String postId)async{
     return await postRepository.getLikes(postId);
  }
}