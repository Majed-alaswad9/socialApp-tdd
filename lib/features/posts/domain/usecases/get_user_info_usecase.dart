import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';
import 'package:social_app_tdd/features/posts/data/model/user_model.dart';
import '../../../../core/errors/failures.dart';
import '../repository/posts_repository.dart';

class GetUserInfoUseCase {
  final PostRepository postsRepository;

  GetUserInfoUseCase(this.postsRepository);

  Future<Either<Failure, UserModel>> call(String uId) async {
    return await postsRepository.getUserInformation(uId);
  }
}
