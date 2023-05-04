import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';

abstract class AuthRepository {
  Future<Either<Failure, Unit>> login(String email, String password);
  Future<Either<Failure, Unit>> signup(
    String userName,
    String email,
    String password,
  );
  Future<Either<Failure, Unit>> createUser(
      String userName, String email, String password, String uId);
}
