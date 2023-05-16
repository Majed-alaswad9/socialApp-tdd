import 'package:bloc/bloc.dart';
import 'package:social_app_tdd/features/posts/presentation/bloc/posts_bloc/posts_event.dart';
import 'package:social_app_tdd/features/posts/presentation/bloc/posts_bloc/posts_state.dart';

import '../../../../../core/errors/failures.dart';
import '../../../../../core/strings/failure.dart';
import '../../../../../core/strings/id_and_token.dart';
import '../../../domain/usecases/get_post_usecase.dart';
import '../../../domain/usecases/get_user_info_usecase.dart';

class PostsBloc extends Bloc<PostsEvent, PostsState> {
  final GetAllPostsUseCase getAllPostsUseCase;
  final GetUserInfoUseCase getUserInfoUseCase;

  PostsBloc({required this.getUserInfoUseCase, required this.getAllPostsUseCase}) : super(PostInitial()){
    on(<PostsEvent>(event, emit) async{
      if(event is GetPostsEvent){
        emit(LoadingGetPostsState());
        final successOrFailure=await getAllPostsUseCase();
        successOrFailure.fold((l) {
          emit(ErrorGetPostsState(_mapFailureToMessage(l)));
        }, (r) {
          emit(SuccessGetPostsState(r));
        });
      }else if(event is GetUserInformationEvent){
        final successOrFailure=await getUserInfoUseCase(userId!);
        successOrFailure.fold((l) {
          emit(ErrorGetUserInformationState(_mapFailureToMessage(l)));
        }, (r) {
          emit(SuccessGetUserInformationState(r));
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