
abstract class PostsEvent{
  PostsEvent();
}

class GetPostsEvent extends PostsEvent{
  GetPostsEvent();
}

class AddLikeEvent extends PostsEvent{

}

class GetLikesEvent extends PostsEvent{

}