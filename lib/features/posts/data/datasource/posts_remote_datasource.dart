import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import '../../../../core/errors/exceptions.dart';
import '../model/get_post_model.dart';

abstract class PostRemoteDataSource {
  Future<List<PostModel>> getAllPosts();

  Future<Unit> addPost(String userId, String userName, String userImage,
      String content, String date, File? image);

  Future<Unit> deletePost(String id);

  Future<Unit> editPost(String id, String content, File? image);
}

class PostRemoteDataSourceImpl implements PostRemoteDataSource {
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
          await FirebaseFirestore.instance
              .collection('posts')
              .add({
                'userId': userId,
                'userName': userName,
                'userImage': userImage ?? '',
                'content': content,
                'date': date,
                'image': value
              })
              .then((value) {})
              .catchError((error) {
                print(error.toString());
                throw ServerException();
              });
        }).catchError((error) {
          print(error.toString());
          throw ServerException();
        });
      }).catchError((error) {
        print(error.toString());
        throw ServerException();
      });
    } else {
      await FirebaseFirestore.instance.collection('posts').add({
        'userId': userId,
        'userName': userName,
        'userImage': userImage ?? '',
        'content': content,
        'date': date,
        'image': ''
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
    FirebaseFirestore.instance.collection('posts').get().then((value) {
      value.docs.forEach((element) {
        postModel.add(PostModel.fromJson(element.data()));
      });
    }).catchError((_) {});
    throw ServerException();
  }
}
