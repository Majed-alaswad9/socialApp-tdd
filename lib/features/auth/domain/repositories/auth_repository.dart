import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';
import '../../../../core/errors/failures.dart';

abstract class AuthRepository {
  Future<Either<Failure, Unit>> login(String email, String password);
  Future<Either<Failure, Unit>> signup(
      String userName, String email, String password, File? profileImage);
  Future<Either<Failure, File>> pickProfileImage(ImageSource source);
}
