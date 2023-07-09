import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../../data/model/user_model/user_model.dart';
import '../repository/posts_repository.dart';

@injectable
class GetUserInfoUseCase {
  final PostRepository postsRepository;

  GetUserInfoUseCase(this.postsRepository);

  Future<Either<Failure, UserModel>> call(String uId) async {
    return await postsRepository.getUserInformation(uId);
  }
}
