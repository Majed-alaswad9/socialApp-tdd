import 'package:social_app_tdd/features/posts/data/model/post_model.dart';

abstract class PostsState{
  PostsState();
}

class PostInitial extends PostsState {}

class LoadingGetPostsState extends PostsState{
  LoadingGetPostsState();
}
class SuccessGetPostsState extends PostsState{
  final List<PostModel> postModel;

  SuccessGetPostsState(this.postModel);
}

class ErrorGetPostsState extends PostsState{
  final String error;

  ErrorGetPostsState(this.error);
}