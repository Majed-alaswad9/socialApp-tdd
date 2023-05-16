
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

}

class GetLikesEvent extends PostsEvent{

}