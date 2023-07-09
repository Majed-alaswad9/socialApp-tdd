import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:social_app_tdd/core/strings/id_and_token.dart';
import '../../../../core/errors/exceptions.dart';
import '../model/post_model/post_model.dart';
import '../model/user_model/user_model.dart';

abstract class PostRemoteDataSource {
  Future<List<PostModel>> getAllPosts();

  Future<Unit> addPost(String userId, String userName, String userImage,
      String content, String date, File? image);

  Future<Unit> addLike(String postId);

  Future<Unit> deleteLike(String postId);

  Future<List<UserModel>> getLikes(String postId);

  Future<Unit> deletePost(String id);

  Future<UserModel> getUserInformation(String uId);

  Future<Unit> editPost(String id, String content, File? image);
}

@Injectable(as: PostRemoteDataSource)
class PostRemoteDataSourceImplement implements PostRemoteDataSource {
  @override
  Future<Unit> addPost(String userId, String userName, String userImage,
      String content, String date, File? image) async {
    if (image != null) {
      await FirebaseStorage.instance
          .ref()
          .child('posts/${Uri.file(image.path).pathSegments.last}')
          .putFile(image)
          .then((value) {
        value.ref.getDownloadURL().then((value) async {
          await FirebaseFirestore.instance.collection('posts').add({
            'userId': userId,
            'userName': userName,
            'userImage': userImage,
            'content': content,
            'createAt': date,
            'postImage': value
          }).then((value) {
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
      await FirebaseFirestore.instance.collection('posts').add({
        'userId': userId,
        'userName': userName,
        'userImage': userImage,
        'content': content,
        'createAt': date,
        'postImage': ''
      }).then((value) {
        return Future.value(unit);
      }).catchError((_) {
        throw ServerException();
      });
    }
    return Future.value(unit);
  }

  @override
  Future<Unit> deletePost(String id) async {
    return Future.value(unit);
  }

  @override
  Future<Unit> editPost(String id, String content, File? image) async {
    return Future.value(unit);
  }

  @override
  Future<List<PostModel>> getAllPosts() async {
    List<PostModel> postModel = [];
    await FirebaseFirestore.instance
        .collection('posts')
        .get()
        .then((value) async {
      for (var element in value.docs) {
        final isLike =
            await element.reference.collection('likes').doc(userId).get();
        await element.reference.collection('likes').get().then((value) {
          postModel.add(PostModel.fromJson(
              element.data(), element.id, isLike.exists, value.docs.length));
        }).catchError((_) {
          throw ServerException();
        });
      }
      return postModel;
    }).catchError((_) {
      throw ServerException();
    });
    return postModel;
  }

  @override
  Future<UserModel> getUserInformation(String uId) async {
    UserModel? userModel;
    await FirebaseFirestore.instance
        .collection('users')
        .doc(uId)
        .get()
        .then((value) {
      userModel = UserModel.fromJson(value.data()!);
      return userModel;
    }).catchError((_) {
      throw ServerException();
    });
    return userModel!;
  }

  @override
  Future<Unit> addLike(String postId) async {
    await FirebaseFirestore.instance
        .collection('posts')
        .doc(postId)
        .collection('likes')
        .doc(userId)
        .set({'like': true}).then((value) {
      return Future.value(unit);
    }).catchError((_) {
      throw ServerException();
    });
    return Future.value(unit);
  }

  @override
  Future<Unit> deleteLike(String postId) async {
    await FirebaseFirestore.instance
        .collection('posts')
        .doc(postId)
        .collection('likes')
        .doc(userId)
        .delete()
        .then((value) {
      return Future.value(unit);
    }).catchError((_) {
      throw ServerException();
    });
    return Future.value(unit);
  }

  @override
  Future<List<UserModel>> getLikes(String postId) async {
    List<UserModel> userModel = [];
    await FirebaseFirestore.instance
        .collection('posts')
        .doc(postId)
        .collection('likes')
        .get()
        .then((value) async {
      for (var element in value.docs) {
        await FirebaseFirestore.instance
            .collection('users')
            .doc(element.id)
            .get()
            .then((value) {
          userModel.add(UserModel.fromJson(value.data()!));
          return Future.value(userModel);
        }).catchError((_) {
          throw ServerException();
        });
      }
      return Future.value(userModel);
    }).catchError((_) {
      throw ServerException();
    });
    return Future.value(userModel);
  }
}
