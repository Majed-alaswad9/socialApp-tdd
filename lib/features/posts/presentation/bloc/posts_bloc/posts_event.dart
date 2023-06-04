
abstract class PostsEvent{
  PostsEvent();
}

class GetPostsEvent extends PostsEvent{
  GetPostsEvent();
}

class GetUserInformationEvent extends PostsEvent{
  GetUserInformationEvent();
}

class AddLikeEvent extends PostsEvent{
  final String postId;

  AddLikeEvent(this.postId);
}

class GetLikesEvent extends PostsEvent{

}