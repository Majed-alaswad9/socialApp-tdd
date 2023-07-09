part of 'posts_bloc.dart';

@freezed
abstract class PostsEvent with _$PostsEvent {
  const factory PostsEvent.getPostsEvent() = _getPostsEvent;
  const factory PostsEvent.getUserInformationEvent() = _getUserInformationEvent;
  const factory PostsEvent.addLikeEvent(String postId) = _addLikeEvent;
  const factory PostsEvent.getLikesEvent() = _getLikesEvent;
}
