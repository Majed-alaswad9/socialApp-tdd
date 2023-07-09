import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:social_app_tdd/features/posts/data/model/post_model/post_model.dart';
import 'package:social_app_tdd/features/posts/data/model/user_model/user_model.dart';
import '../../../../../core/errors/failures.dart';
import '../../../../../core/strings/failure.dart';
import '../../../../../core/strings/id_and_token.dart';
import '../../../domain/usecases/add_like_usecase.dart';
import '../../../domain/usecases/delete_like_usecase.dart';
import '../../../domain/usecases/get_likes_usecase.dart';
import '../../../domain/usecases/get_post_usecase.dart';
import '../../../domain/usecases/get_user_info_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'posts_event.dart';
part 'posts_state.dart';
part 'posts_bloc.freezed.dart';

@injectable
class PostsBloc extends Bloc<PostsEvent, PostsState> {
  final GetAllPostsUseCase getAllPostsUseCase;
  final GetUserInfoUseCase getUserInfoUseCase;
  final AddLikeUseCase addLikeUseCase;
  final DeleteLikeUseCase deleteLikeUseCase;
  final GetLikesUseCase getLikesUseCase;

  PostsBloc(
      {required this.getUserInfoUseCase,
      required this.getAllPostsUseCase,
      required this.addLikeUseCase,
      required this.deleteLikeUseCase,
      required this.getLikesUseCase})
      : super(const PostsState.postInitial()) {
    on(<PostsEvent>(event, emit) async {
      on<_$_getPostsEvent>((event, emit) async {
        emit(const _$_loadingGetPostsState());
        final successOrFailure = await getAllPostsUseCase();
        successOrFailure.fold((l) {
          emit(_$_errorGetPostsState(_mapFailureToMessage(l)));
        }, (success) {
          emit(_$_successGetPostsState(success));
        });
      });
      on<_$_getUserInformationEvent>((event, emit) async {
        final successOrFailure = await getUserInfoUseCase(userId!);
        successOrFailure.fold((l) {
          emit(_$_errorGetUserInformationState(_mapFailureToMessage(l)));
        }, (r) {
          emit(_$_successGetUserInformationState(r));
        });
      });
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
