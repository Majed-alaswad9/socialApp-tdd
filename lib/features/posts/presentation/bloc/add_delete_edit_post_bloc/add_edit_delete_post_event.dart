part of 'add_edit_delete_post_bloc.dart';

@freezed
abstract class AddDeleteEditPostEvent with _$AddDeleteEditPostEvent {
  const factory AddDeleteEditPostEvent.addPostEvent(
      String userId,
      String userName,
      String userImage,
      String content,
      String date,
      File? image) = _addPostEvent;
  const factory AddDeleteEditPostEvent.deletePostEvent(String postId) =
      _deletePostEvent;
  const factory AddDeleteEditPostEvent.editPostEvent(
      String postId, String content, File? image) = _editPostEvent;
  const factory AddDeleteEditPostEvent.pickImageEvent(ImageSource imageSource) =
      _pickImageEvent;
}
