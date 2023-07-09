part of 'add_edit_delete_post_bloc.dart';

@freezed
abstract class AddDeleteEditPostState with _$AddDeleteEditPostState {
  const factory AddDeleteEditPostState.addDeleteEditPostInitial() =
      _addDeleteEditPostInitial;
  const factory AddDeleteEditPostState.lading() = _loading;
  const factory AddDeleteEditPostState.successAddDeleteEditPostState(
      String message) = _successAddDeleteEditPostState;
  const factory AddDeleteEditPostState.errorAddDeleteEditPostState(
      String message) = _errorAddDeleteEditPostState;
  const factory AddDeleteEditPostState.errorPickImageState(String message) =
      _errorPickImageState;
  const factory AddDeleteEditPostState.successPickImageState(File image) =
      _successPickImageState;
}
