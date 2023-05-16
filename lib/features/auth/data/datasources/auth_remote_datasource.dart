import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:social_app_tdd/core/errors/exceptions.dart';
import 'package:social_app_tdd/core/strings/id_and_token.dart';
import 'package:social_app_tdd/features/posts/data/model/user_model.dart';

abstract class AuthRemoteDataSource {
  Future<Unit> login(String email, String password);

  Future<Unit> signup(
      String userName, String email, String password, File? profileImage);

  Future<Unit> createUser(
      String userName, String email, String uId, File? profileImage);
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  @override
  Future<Unit> login(String email, String password) async {
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password)
        .then((value) {
      userId = value.user!.uid;
      return Future.value(unit);
    }).catchError((error) {
      throw ServerException();
    });
    return Future.value(unit);
  }

  @override
  Future<Unit> signup(String userName, String email, String password,
      File? profileImage) async {
    await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password)
        .then((value) async {
      await createUser(userName, email, value.user!.uid, profileImage);
      return Future.value(unit);
    }).catchError((error) {
      throw ServerException();
    });
    return Future.value(unit);
  }

  @override
  Future<Unit> createUser(
      String userName, String email, String uId, File? profileImage) async {
    if (profileImage != null) {
      FirebaseStorage.instance
          .ref()
          .child('user/${Uri.file(profileImage.path).pathSegments.last}')
          .putFile(profileImage)
          .then((value) {
        value.ref.getDownloadURL().then((value) {
          final userModel = UserModel(
              uId: uId, userName: userName, email: email, profileImage: value);
          FirebaseFirestore.instance
              .collection('users')
              .doc(uId)
              .set(userModel.toJson())
              .then((value) {
            return Future.value(unit);
          }).catchError((_) {
            throw ServerException();
          });
        }).catchError((_) {
          throw ServerException();
        });
      }).catchError((_) {
        throw ServerException();
      });
    } else {
      final userModel = UserModel(uId: uId, userName: userName, email: email);
      FirebaseFirestore.instance
          .collection('users')
          .doc(uId)
          .set(userModel.toJson())
          .then((value) {
        return Future.value(unit);
      }).catchError((_) {
        throw ServerException();
      });
    }
    return Future.value(unit);
  }
}
