import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:social_app_tdd/core/errors/exceptions.dart';
import 'package:social_app_tdd/core/strings/id_and_token.dart';

abstract class AuthRemoteDataSource {
  Future<Unit> login(String email, String password);

  Future<Unit> signup(
    String userName,
    String email,
    String password,
  );

  Future<Unit> createUser(
      String userName, String email, String password, String uId);
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  @override
  Future<Unit> login(String email, String password) async {
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password)
        .then((value) {
      return Future.value(unit);
    }).catchError((error) {
      throw ServerException();
    });
    return Future.value(unit);
  }

  @override
  Future<Unit> signup(String userName, String email, String password) async {
    await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password)
        .then((value) {
      userId = value.user!.uid;
      return Future.value(unit);
    }).catchError((error) {
      throw ServerException();
    });
    return Future.value(unit);
  }

  @override
  Future<Unit> createUser(
      String userName, String email, String password, String uId) {
    Map<String, dynamic> userModel = {
      'uId': uId,
      'userName': userName,
      'email': email,
      'password': password,
    };
    FirebaseFirestore.instance
        .collection('users')
        .doc(uId)
        .set(userModel)
        .then((value) {
      return Future.value(unit);
    }).catchError((_) {
      throw ServerException();
    });
    return Future.value(unit);
  }
}
