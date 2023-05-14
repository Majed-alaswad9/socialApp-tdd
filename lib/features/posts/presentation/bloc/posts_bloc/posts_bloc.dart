import 'package:bloc/bloc.dart';
import 'package:social_app_tdd/features/posts/presentation/bloc/posts_bloc/posts_event.dart';
import 'package:social_app_tdd/features/posts/presentation/bloc/posts_bloc/posts_state.dart';

import '../../../../../core/errors/failures.dart';
import '../../../../../core/strings/failure.dart';
import '../../../domain/usecases/get_post_usecase.dart';

class PostsBloc extends Bloc<PostsEvent, PostsState> {
  final GetAllPostsUseCase getAllPostsUseCase;

  PostsBloc({required this.getAllPostsUseCase}) : super(PostInitial()){
    on(<PostsEvent>(event, emit) async{
      if(event is GetPostsEvent){
        final successOrFailure=await getAllPostsUseCase();
        successOrFailure.fold((l) {
          emit(ErrorGetPostsState(_mapFailureToMessage(l)));
        }, (r) {
          emit(SuccessGetPostsState(r));
        });
      }
    });
  }
}

String _mapFailureToMessage(Failure failure) {
  switch (failure.runtimeType) {
    case ServerFailure:
      return SERVER_FAILURE;
    case OfflineFailure:
      return OFFLINE_FAILURE;
    case EmptyCacheFailure:
      return EMPTY_CACHE_FAILURE;
    default:
      return "UnExpected Error, Pleas try again later";
  }
}