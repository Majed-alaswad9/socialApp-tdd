import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:image_picker/image_picker.dart';
import 'package:social_app_tdd/core/errors/failures.dart';
import 'package:social_app_tdd/core/strings/failure.dart';
import 'package:social_app_tdd/features/auth/domain/usecases/login_usecase.dart';
import 'package:social_app_tdd/features/auth/domain/usecases/signup_usecase.dart';
part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final LoginUseCase loginUseCase;
  final SignupUseCase signupUseCase;
  AuthBloc(this.loginUseCase, this.signupUseCase)
      : super(const AuthState.authInitial()) {
    on<_$_loginEvent>((event, emit) async {
      emit(const _$_loading());
      final successOrFailure = await loginUseCase(event.email, event.password);
      successOrFailure.fold((failure) {
        emit(_$_errorLoginState(_mapStringFailure(failure)));
      }, (_) {
        emit(const _$_successLoginState('تم تسجيل الدخول بنجاح'));
      });
    });
    on<_$_signupEvent>((event, emit) async {
      emit(const _$_loading());
      final successOrFailure = await signupUseCase(
          event.name, event.email, event.password, event.profileImage);
      successOrFailure.fold((failure) {
        emit(_$_errorSignupState(_mapStringFailure(failure)));
      }, (r) {
        emit(const _$_successSignupState('تم تسجيل الدخول بنجاح'));
      });
    });
    on<_$_pickProfileImage>((event, emit) async {
      final image = await ImagePicker().pickImage(source: event.image);
      if (image != null) {
        emit(_$_successPickProfileImageState(File(image.path)));
      } else {
        emit(const _$_errorPickProfileImageState(
            'حدث خطأ الرجاء المحاولة لاحقا'));
      }
    });
  }
}

String _mapStringFailure(Failure failure) {
  switch (failure.runtimeType) {
    case ServerFailure:
      return SERVER_FAILURE;
    case OfflineFailure:
      return OFFLINE_FAILURE;
    default:
      return 'خطأ غير معروف الرجاء المحاولة لاحقا';
  }
}
