import 'package:dartz/dartz.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class AuthLocalDataSource {
  Future<Unit> cacheLogin({required String id});
}

class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  final SharedPreferences sharedPreferences;

  AuthLocalDataSourceImpl(this.sharedPreferences);
  @override
  Future<Unit> cacheLogin({required String id}) {
    sharedPreferences.setString("USER_ID", id);
    return Future.value(unit);
  }
}
