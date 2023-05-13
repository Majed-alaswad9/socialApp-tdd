import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';
import '../../../../core/errors/failures.dart';
import '../repository/posts_repository.dart';

class GetUserInfoUseCase {
  final PostRepository postsRepository;

  GetUserInfoUseCase(this.postsRepository);

  Future<Either<Failure, (String?, String?)>> call() async {
    return await postsRepository.getUserInformation();
  }
}
