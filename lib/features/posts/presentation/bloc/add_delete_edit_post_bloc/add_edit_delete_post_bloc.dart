import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/errors/failures.dart';
import '../../../../../core/strings/failure.dart';
import '../../../../../core/strings/success.dart';
import '../../../domain/usecases/add_post_usecase.dart';
import '../../../domain/usecases/delete_post_usecase.dart';
import '../../../domain/usecases/edit_post_usecase.dart';
part 'add_edit_delete_post_event.dart';
part 'add_edit_delete_post_state.dart';
part 'add_edit_delete_post_bloc.freezed.dart';

@injectable
class AddDeleteEditPostBloc
    extends Bloc<AddDeleteEditPostEvent, AddDeleteEditPostState> {
  final AddPostUseCase addPostUseCase;
  final DeletePostUseCase deletePostUseCase;
  final EditPostUseCase editPostUseCase;

  AddDeleteEditPostBloc({
    required this.addPostUseCase,
    required this.deletePostUseCase,
    required this.editPostUseCase,
  }) : super(const AddDeleteEditPostState.addDeleteEditPostInitial()) {
    on<AddDeleteEditPostEvent>((event, emit) async {
      on<_$_addPostEvent>((event, emit) async {
        emit(const _$_loading());
        final successOrFailure = await addPostUseCase(
            event.userId,
            event.userName,
            event.userImage,
            event.content,
            event.date,
            event.image);
        emit(_mapEitherSuccessOrFailurePost(
            successOrFailure, POST_ADD_SUCCESSFULLY));
      });
      on<_$_deletePostEvent>((event, emit) async {
        final successOrFailure = await deletePostUseCase(event.postId);
        emit(_mapEitherSuccessOrFailurePost(
            successOrFailure, POST_DELETE_SUCCESSFULLY));
      });
      on<_$_editPostEvent>((event, emit) async {
        emit(const _$_loading());
        final successOrFailure =
            await editPostUseCase(event.postId, event.content, event.image);
        emit(_mapEitherSuccessOrFailurePost(
            successOrFailure, POST_EDIT_SUCCESSFULLY));
      });
      on<_$_pickImageEvent>((event, emit) async {
        final image = await ImagePicker().pickImage(source: event.imageSource);
        if (image != null) {
          emit(_$_successPickImageState(File(image.path)));
        } else {
          emit(const _$_errorPickImageState('حدث خطأ الرجاء المحاولة لاحقا'));
        }
      });
    });
  }
}

AddDeleteEditPostState _mapEitherSuccessOrFailurePost(
    Either<Failure, Unit> either, String message) {
  return either.fold((failure) {
    return (_$_errorAddDeleteEditPostState(_mapFailureToMessage(failure)));
  }, (_) {
    return (_$_successAddDeleteEditPostState(message));
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
