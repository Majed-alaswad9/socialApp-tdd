import 'package:dartz/dartz.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class AuthLocalDataSource {
  Future<Unit> cacheLogin({required String userName, String? userImage});
}

class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  final SharedPreferences sharedPreferences;

  AuthLocalDataSourceImpl(this.sharedPreferences);
  @override
  Future<Unit> cacheLogin({required String userName, String? userImage}) {
    sharedPreferences.setString("USER_NAME", userName);
    if (userImage != null) {
      sharedPreferences.setString('USER_IMAGE', userImage);
    }
    return Future.value(unit);
  }
}
