import 'package:dartz/dartz.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/network_info.dart';
import '../../../../core/strings/id_and_token.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/auth_local_datasources.dart';
import '../datasources/auth_remote_datasource.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource authRemoteDataSource;
  final AuthLocalDataSource authLocalDataSource;
  final NetworkInfo networkInfo;

  AuthRepositoryImpl(
      {required this.authRemoteDataSource,
      required this.authLocalDataSource,
      required this.networkInfo});

  @override
  Future<Either<Failure, Unit>> login(String email, String password) async {
    if (await networkInfo.isConnected) {
      try {
        await authRemoteDataSource.login(email, password);
        await authLocalDataSource.cacheLogin(id: userId!);
        return const Right(unit);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(OfflineFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> signup(
      String userName, String email, String password) async {
    if (await networkInfo.isConnected) {
      try {
        await authRemoteDataSource.signup(userName, email, password);
        return const Right(unit);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(OfflineFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> createUser(
      String userName, String email, String password, String uId) async {
    if (await networkInfo.isConnected) {
      try {
        await authRemoteDataSource.createUser(userName, email, password, uId);
        return const Right(unit);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(OfflineFailure());
    }
  }
}
