import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';

import '../../../../../core/errors/failures.dart';
import '../../../../../core/strings/failure.dart';
import '../../../../../core/strings/success.dart';
import '../../../domain/usecases/add_post_usecase.dart';
import '../../../domain/usecases/delete_post_usecase.dart';
import '../../../domain/usecases/edit_post_usecase.dart';
import '../../../domain/usecases/get_user_info_usecase.dart';
import '../../../domain/usecases/pick_image_usecase.dart';
import 'add_edit_delete_post_event.dart';
import 'add_edit_delete_post_state.dart';

class AddDeleteEditPostBloc
    extends Bloc<AddDeleteEditPostEvent, AddDeleteEditPostState> {
  final AddPostUseCase addPostUseCase;
  final DeletePostUseCase deletePostUseCase;
  final EditPostUseCase editPostUseCase;
  final PickImageUseCase pickImageUseCase;
  final GetUserInfoUseCase getUserInfoUseCase;

  AddDeleteEditPostBloc({
    required this.addPostUseCase,
    required this.deletePostUseCase,
    required this.editPostUseCase,
    required this.pickImageUseCase,
    required this.getUserInfoUseCase,
  }) : super(AddDeleteEditPostInitial()) {
    on<AddDeleteEditPostEvent>((event, emit) async {
      if (event is AddPostEvent) {
        emit(LoadingAddDeleteEditPostState());
        final successOrFailure = await addPostUseCase(
            event.userId,
            event.userName,
            event.userImage,
            event.content,
            event.date,
            event.image);
        emit(_mapEitherSuccessOrFailurePost(
            successOrFailure, POST_ADD_SUCCESSFULLY));
      } else if (event is DeletePostEvent) {
        final successOrFailure = await deletePostUseCase(event.sId);
        emit(_mapEitherSuccessOrFailurePost(
            successOrFailure, POST_DELETE_SUCCESSFULLY));
      } else if (event is EditPostEvent) {
        emit(LoadingAddDeleteEditPostState());
        final successOrFailure =
            await editPostUseCase(event.sId, event.content, event.image);
        emit(_mapEitherSuccessOrFailurePost(
            successOrFailure, POST_EDIT_SUCCESSFULLY));
      } else if (event is PickImageEvent) {
        final image = await pickImageUseCase(event.source);
        image.fold((l) {
          emit(const ErrorPickImageState());
        }, (success) {
          emit(SuccessPickImageState(File(success.path)));
        });
      } else if (event is GetLocalUserInformation) {
         (nameUser,imageUser)=await getUserInfoUseCase();
      }
    });
  }
}

AddDeleteEditPostState _mapEitherSuccessOrFailurePost(
    Either<Failure, Unit> either, String message) {
  return either.fold((failure) {
    return (ErrorAddDeleteEditPostState(
        message: _mapFailureToMessage(failure)));
  }, (_) {
    return (SuccessAddDeleteEditPostState(message: message));
  });
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
