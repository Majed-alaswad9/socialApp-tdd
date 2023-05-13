import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';
import 'package:social_app_tdd/features/auth/domain/repositories/auth_repository.dart';
import '../../../../core/errors/failures.dart';

class PickProfileImageUseCase {
  final AuthRepository authRepository;

  PickProfileImageUseCase(this.authRepository);

  Future<Either<Failure, File>> call(ImageSource source) async {
    return await authRepository.pickProfileImage(source);
  }
}
