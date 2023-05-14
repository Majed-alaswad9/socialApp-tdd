import 'dart:io';

import 'package:image_picker/image_picker.dart';

abstract class AddDeleteEditPostEvent {
  const AddDeleteEditPostEvent();
}

class AddPostEvent extends AddDeleteEditPostEvent {
  final String userId;
  final String userName;
  final String userImage;
  final String content;
  final String date;
  File? image;

  AddPostEvent(
      {required this.userId,
      required this.userName,
      required this.userImage,
      required this.date,
      required this.content,
      this.image});
}

class DeletePostEvent extends AddDeleteEditPostEvent {
  final String sId;

  const DeletePostEvent({required this.sId});
}

class EditPostEvent extends AddDeleteEditPostEvent {
  final String sId;
  final String content;
  File? image;

  EditPostEvent({required this.sId, required this.content, this.image});
}

class PickImageEvent extends AddDeleteEditPostEvent {
  final ImageSource source;

  PickImageEvent(this.source);
}

class GetLocalUserInformation extends AddDeleteEditPostEvent {
  GetLocalUserInformation();
}
