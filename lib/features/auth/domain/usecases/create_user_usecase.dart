import 'package:dartz/dartz.dart';
import 'package:social_app_tdd/features/auth/domain/repositories/auth_repository.dart';

import '../../../../core/errors/failures.dart';

class CreateUserUseCase {
  final AuthRepository authRepository;

  CreateUserUseCase(this.authRepository);
  Future<Either<Failure, Unit>> call(
      String userName, String email, String password, String uId) async {
    return await authRepository.createUser(userName, email, password, uId);
  }
}
