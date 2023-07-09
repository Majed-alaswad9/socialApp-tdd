part of 'posts_bloc.dart';

@freezed
abstract class PostsState with _$PostsState {
  const factory PostsState.postInitial() = _postInitial;
  const factory PostsState.loadingGetPostsState() = _loadingGetPostsState;
  const factory PostsState.successGetPostsState(List<PostModel> postModel) =
      _successGetPostsState;
  const factory PostsState.errorGetPostsState(String message) =
      _errorGetPostsState;
  const factory PostsState.successGetUserInformationState(UserModel userModel) =
      _successGetUserInformationState;
  const factory PostsState.errorGetUserInformationState(String message) =
      _errorGetUserInformationState;
  const factory PostsState.successAddLikeState() = _successAddLikeState;
  const factory PostsState.errorAddLikeState(String message) =
      _errorAddLikeState;
  const factory PostsState.successDeleteLikeState() = _successDeleteLikeState;
  const factory PostsState.errorDeleteLikeState(String message) =
      _errorDeleteLikeState;
  const factory PostsState.successGetLikesState() = _successGetLikesState;
  const factory PostsState.errorGetLikesState(String message) =
      _errorGetLikesState;
}
