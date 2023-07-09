// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) logEvent,
    required TResult Function(
            String name, String email, String password, File? profileImage)
        signupEvent,
    required TResult Function(ImageSource image) pickProfileImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? logEvent,
    TResult? Function(
            String name, String email, String password, File? profileImage)?
        signupEvent,
    TResult? Function(ImageSource image)? pickProfileImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? logEvent,
    TResult Function(
            String name, String email, String password, File? profileImage)?
        signupEvent,
    TResult Function(ImageSource image)? pickProfileImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_loginEvent value) logEvent,
    required TResult Function(_signupEvent value) signupEvent,
    required TResult Function(_pickProfileImage value) pickProfileImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_loginEvent value)? logEvent,
    TResult? Function(_signupEvent value)? signupEvent,
    TResult? Function(_pickProfileImage value)? pickProfileImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_loginEvent value)? logEvent,
    TResult Function(_signupEvent value)? signupEvent,
    TResult Function(_pickProfileImage value)? pickProfileImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_loginEventCopyWith<$Res> {
  factory _$$_loginEventCopyWith(
          _$_loginEvent value, $Res Function(_$_loginEvent) then) =
      __$$_loginEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$_loginEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_loginEvent>
    implements _$$_loginEventCopyWith<$Res> {
  __$$_loginEventCopyWithImpl(
      _$_loginEvent _value, $Res Function(_$_loginEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_loginEvent(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_loginEvent implements _loginEvent {
  const _$_loginEvent(this.email, this.password);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.logEvent(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_loginEvent &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_loginEventCopyWith<_$_loginEvent> get copyWith =>
      __$$_loginEventCopyWithImpl<_$_loginEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) logEvent,
    required TResult Function(
            String name, String email, String password, File? profileImage)
        signupEvent,
    required TResult Function(ImageSource image) pickProfileImage,
  }) {
    return logEvent(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? logEvent,
    TResult? Function(
            String name, String email, String password, File? profileImage)?
        signupEvent,
    TResult? Function(ImageSource image)? pickProfileImage,
  }) {
    return logEvent?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? logEvent,
    TResult Function(
            String name, String email, String password, File? profileImage)?
        signupEvent,
    TResult Function(ImageSource image)? pickProfileImage,
    required TResult orElse(),
  }) {
    if (logEvent != null) {
      return logEvent(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_loginEvent value) logEvent,
    required TResult Function(_signupEvent value) signupEvent,
    required TResult Function(_pickProfileImage value) pickProfileImage,
  }) {
    return logEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_loginEvent value)? logEvent,
    TResult? Function(_signupEvent value)? signupEvent,
    TResult? Function(_pickProfileImage value)? pickProfileImage,
  }) {
    return logEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_loginEvent value)? logEvent,
    TResult Function(_signupEvent value)? signupEvent,
    TResult Function(_pickProfileImage value)? pickProfileImage,
    required TResult orElse(),
  }) {
    if (logEvent != null) {
      return logEvent(this);
    }
    return orElse();
  }
}

abstract class _loginEvent implements AuthEvent {
  const factory _loginEvent(final String email, final String password) =
      _$_loginEvent;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$_loginEventCopyWith<_$_loginEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_signupEventCopyWith<$Res> {
  factory _$$_signupEventCopyWith(
          _$_signupEvent value, $Res Function(_$_signupEvent) then) =
      __$$_signupEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, String email, String password, File? profileImage});
}

/// @nodoc
class __$$_signupEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_signupEvent>
    implements _$$_signupEventCopyWith<$Res> {
  __$$_signupEventCopyWithImpl(
      _$_signupEvent _value, $Res Function(_$_signupEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? password = null,
    Object? profileImage = freezed,
  }) {
    return _then(_$_signupEvent(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$_signupEvent implements _signupEvent {
  const _$_signupEvent(this.name, this.email, this.password, this.profileImage);

  @override
  final String name;
  @override
  final String email;
  @override
  final String password;
  @override
  final File? profileImage;

  @override
  String toString() {
    return 'AuthEvent.signupEvent(name: $name, email: $email, password: $password, profileImage: $profileImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_signupEvent &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, email, password, profileImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_signupEventCopyWith<_$_signupEvent> get copyWith =>
      __$$_signupEventCopyWithImpl<_$_signupEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) logEvent,
    required TResult Function(
            String name, String email, String password, File? profileImage)
        signupEvent,
    required TResult Function(ImageSource image) pickProfileImage,
  }) {
    return signupEvent(name, email, password, profileImage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? logEvent,
    TResult? Function(
            String name, String email, String password, File? profileImage)?
        signupEvent,
    TResult? Function(ImageSource image)? pickProfileImage,
  }) {
    return signupEvent?.call(name, email, password, profileImage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? logEvent,
    TResult Function(
            String name, String email, String password, File? profileImage)?
        signupEvent,
    TResult Function(ImageSource image)? pickProfileImage,
    required TResult orElse(),
  }) {
    if (signupEvent != null) {
      return signupEvent(name, email, password, profileImage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_loginEvent value) logEvent,
    required TResult Function(_signupEvent value) signupEvent,
    required TResult Function(_pickProfileImage value) pickProfileImage,
  }) {
    return signupEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_loginEvent value)? logEvent,
    TResult? Function(_signupEvent value)? signupEvent,
    TResult? Function(_pickProfileImage value)? pickProfileImage,
  }) {
    return signupEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_loginEvent value)? logEvent,
    TResult Function(_signupEvent value)? signupEvent,
    TResult Function(_pickProfileImage value)? pickProfileImage,
    required TResult orElse(),
  }) {
    if (signupEvent != null) {
      return signupEvent(this);
    }
    return orElse();
  }
}

abstract class _signupEvent implements AuthEvent {
  const factory _signupEvent(final String name, final String email,
      final String password, final File? profileImage) = _$_signupEvent;

  String get name;
  String get email;
  String get password;
  File? get profileImage;
  @JsonKey(ignore: true)
  _$$_signupEventCopyWith<_$_signupEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_pickProfileImageCopyWith<$Res> {
  factory _$$_pickProfileImageCopyWith(
          _$_pickProfileImage value, $Res Function(_$_pickProfileImage) then) =
      __$$_pickProfileImageCopyWithImpl<$Res>;
  @useResult
  $Res call({ImageSource image});
}

/// @nodoc
class __$$_pickProfileImageCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_pickProfileImage>
    implements _$$_pickProfileImageCopyWith<$Res> {
  __$$_pickProfileImageCopyWithImpl(
      _$_pickProfileImage _value, $Res Function(_$_pickProfileImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
  }) {
    return _then(_$_pickProfileImage(
      null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageSource,
    ));
  }
}

/// @nodoc

class _$_pickProfileImage implements _pickProfileImage {
  const _$_pickProfileImage(this.image);

  @override
  final ImageSource image;

  @override
  String toString() {
    return 'AuthEvent.pickProfileImage(image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_pickProfileImage &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_pickProfileImageCopyWith<_$_pickProfileImage> get copyWith =>
      __$$_pickProfileImageCopyWithImpl<_$_pickProfileImage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) logEvent,
    required TResult Function(
            String name, String email, String password, File? profileImage)
        signupEvent,
    required TResult Function(ImageSource image) pickProfileImage,
  }) {
    return pickProfileImage(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? logEvent,
    TResult? Function(
            String name, String email, String password, File? profileImage)?
        signupEvent,
    TResult? Function(ImageSource image)? pickProfileImage,
  }) {
    return pickProfileImage?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? logEvent,
    TResult Function(
            String name, String email, String password, File? profileImage)?
        signupEvent,
    TResult Function(ImageSource image)? pickProfileImage,
    required TResult orElse(),
  }) {
    if (pickProfileImage != null) {
      return pickProfileImage(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_loginEvent value) logEvent,
    required TResult Function(_signupEvent value) signupEvent,
    required TResult Function(_pickProfileImage value) pickProfileImage,
  }) {
    return pickProfileImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_loginEvent value)? logEvent,
    TResult? Function(_signupEvent value)? signupEvent,
    TResult? Function(_pickProfileImage value)? pickProfileImage,
  }) {
    return pickProfileImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_loginEvent value)? logEvent,
    TResult Function(_signupEvent value)? signupEvent,
    TResult Function(_pickProfileImage value)? pickProfileImage,
    required TResult orElse(),
  }) {
    if (pickProfileImage != null) {
      return pickProfileImage(this);
    }
    return orElse();
  }
}

abstract class _pickProfileImage implements AuthEvent {
  const factory _pickProfileImage(final ImageSource image) =
      _$_pickProfileImage;

  ImageSource get image;
  @JsonKey(ignore: true)
  _$$_pickProfileImageCopyWith<_$_pickProfileImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authInitial,
    required TResult Function() loading,
    required TResult Function(String message) successLoginState,
    required TResult Function(String message) errorLoginState,
    required TResult Function(String message) successSignupState,
    required TResult Function(String message) errorSignupState,
    required TResult Function(String message) successCreateUserState,
    required TResult Function(String message) errorCreateUserState,
    required TResult Function(File image) successPickProfileImageState,
    required TResult Function(String message) errorPickProfileImageState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authInitial,
    TResult? Function()? loading,
    TResult? Function(String message)? successLoginState,
    TResult? Function(String message)? errorLoginState,
    TResult? Function(String message)? successSignupState,
    TResult? Function(String message)? errorSignupState,
    TResult? Function(String message)? successCreateUserState,
    TResult? Function(String message)? errorCreateUserState,
    TResult? Function(File image)? successPickProfileImageState,
    TResult? Function(String message)? errorPickProfileImageState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authInitial,
    TResult Function()? loading,
    TResult Function(String message)? successLoginState,
    TResult Function(String message)? errorLoginState,
    TResult Function(String message)? successSignupState,
    TResult Function(String message)? errorSignupState,
    TResult Function(String message)? successCreateUserState,
    TResult Function(String message)? errorCreateUserState,
    TResult Function(File image)? successPickProfileImageState,
    TResult Function(String message)? errorPickProfileImageState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthInitial value) authInitial,
    required TResult Function(_loading value) loading,
    required TResult Function(_successLoginState value) successLoginState,
    required TResult Function(_errorLoginState value) errorLoginState,
    required TResult Function(_successSignupState value) successSignupState,
    required TResult Function(_errorSignupState value) errorSignupState,
    required TResult Function(_successCreateUserState value)
        successCreateUserState,
    required TResult Function(_errorCreateUserState value) errorCreateUserState,
    required TResult Function(_successPickProfileImageState value)
        successPickProfileImageState,
    required TResult Function(_errorPickProfileImageState value)
        errorPickProfileImageState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthInitial value)? authInitial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_successLoginState value)? successLoginState,
    TResult? Function(_errorLoginState value)? errorLoginState,
    TResult? Function(_successSignupState value)? successSignupState,
    TResult? Function(_errorSignupState value)? errorSignupState,
    TResult? Function(_successCreateUserState value)? successCreateUserState,
    TResult? Function(_errorCreateUserState value)? errorCreateUserState,
    TResult? Function(_successPickProfileImageState value)?
        successPickProfileImageState,
    TResult? Function(_errorPickProfileImageState value)?
        errorPickProfileImageState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthInitial value)? authInitial,
    TResult Function(_loading value)? loading,
    TResult Function(_successLoginState value)? successLoginState,
    TResult Function(_errorLoginState value)? errorLoginState,
    TResult Function(_successSignupState value)? successSignupState,
    TResult Function(_errorSignupState value)? errorSignupState,
    TResult Function(_successCreateUserState value)? successCreateUserState,
    TResult Function(_errorCreateUserState value)? errorCreateUserState,
    TResult Function(_successPickProfileImageState value)?
        successPickProfileImageState,
    TResult Function(_errorPickProfileImageState value)?
        errorPickProfileImageState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AuthInitialCopyWith<$Res> {
  factory _$$_AuthInitialCopyWith(
          _$_AuthInitial value, $Res Function(_$_AuthInitial) then) =
      __$$_AuthInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthInitialCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthInitial>
    implements _$$_AuthInitialCopyWith<$Res> {
  __$$_AuthInitialCopyWithImpl(
      _$_AuthInitial _value, $Res Function(_$_AuthInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AuthInitial implements _AuthInitial {
  const _$_AuthInitial();

  @override
  String toString() {
    return 'AuthState.authInitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AuthInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authInitial,
    required TResult Function() loading,
    required TResult Function(String message) successLoginState,
    required TResult Function(String message) errorLoginState,
    required TResult Function(String message) successSignupState,
    required TResult Function(String message) errorSignupState,
    required TResult Function(String message) successCreateUserState,
    required TResult Function(String message) errorCreateUserState,
    required TResult Function(File image) successPickProfileImageState,
    required TResult Function(String message) errorPickProfileImageState,
  }) {
    return authInitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authInitial,
    TResult? Function()? loading,
    TResult? Function(String message)? successLoginState,
    TResult? Function(String message)? errorLoginState,
    TResult? Function(String message)? successSignupState,
    TResult? Function(String message)? errorSignupState,
    TResult? Function(String message)? successCreateUserState,
    TResult? Function(String message)? errorCreateUserState,
    TResult? Function(File image)? successPickProfileImageState,
    TResult? Function(String message)? errorPickProfileImageState,
  }) {
    return authInitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authInitial,
    TResult Function()? loading,
    TResult Function(String message)? successLoginState,
    TResult Function(String message)? errorLoginState,
    TResult Function(String message)? successSignupState,
    TResult Function(String message)? errorSignupState,
    TResult Function(String message)? successCreateUserState,
    TResult Function(String message)? errorCreateUserState,
    TResult Function(File image)? successPickProfileImageState,
    TResult Function(String message)? errorPickProfileImageState,
    required TResult orElse(),
  }) {
    if (authInitial != null) {
      return authInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthInitial value) authInitial,
    required TResult Function(_loading value) loading,
    required TResult Function(_successLoginState value) successLoginState,
    required TResult Function(_errorLoginState value) errorLoginState,
    required TResult Function(_successSignupState value) successSignupState,
    required TResult Function(_errorSignupState value) errorSignupState,
    required TResult Function(_successCreateUserState value)
        successCreateUserState,
    required TResult Function(_errorCreateUserState value) errorCreateUserState,
    required TResult Function(_successPickProfileImageState value)
        successPickProfileImageState,
    required TResult Function(_errorPickProfileImageState value)
        errorPickProfileImageState,
  }) {
    return authInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthInitial value)? authInitial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_successLoginState value)? successLoginState,
    TResult? Function(_errorLoginState value)? errorLoginState,
    TResult? Function(_successSignupState value)? successSignupState,
    TResult? Function(_errorSignupState value)? errorSignupState,
    TResult? Function(_successCreateUserState value)? successCreateUserState,
    TResult? Function(_errorCreateUserState value)? errorCreateUserState,
    TResult? Function(_successPickProfileImageState value)?
        successPickProfileImageState,
    TResult? Function(_errorPickProfileImageState value)?
        errorPickProfileImageState,
  }) {
    return authInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthInitial value)? authInitial,
    TResult Function(_loading value)? loading,
    TResult Function(_successLoginState value)? successLoginState,
    TResult Function(_errorLoginState value)? errorLoginState,
    TResult Function(_successSignupState value)? successSignupState,
    TResult Function(_errorSignupState value)? errorSignupState,
    TResult Function(_successCreateUserState value)? successCreateUserState,
    TResult Function(_errorCreateUserState value)? errorCreateUserState,
    TResult Function(_successPickProfileImageState value)?
        successPickProfileImageState,
    TResult Function(_errorPickProfileImageState value)?
        errorPickProfileImageState,
    required TResult orElse(),
  }) {
    if (authInitial != null) {
      return authInitial(this);
    }
    return orElse();
  }
}

abstract class _AuthInitial implements AuthState {
  const factory _AuthInitial() = _$_AuthInitial;
}

/// @nodoc
abstract class _$$_loadingCopyWith<$Res> {
  factory _$$_loadingCopyWith(
          _$_loading value, $Res Function(_$_loading) then) =
      __$$_loadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_loadingCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_loading>
    implements _$$_loadingCopyWith<$Res> {
  __$$_loadingCopyWithImpl(_$_loading _value, $Res Function(_$_loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_loading implements _loading {
  const _$_loading();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authInitial,
    required TResult Function() loading,
    required TResult Function(String message) successLoginState,
    required TResult Function(String message) errorLoginState,
    required TResult Function(String message) successSignupState,
    required TResult Function(String message) errorSignupState,
    required TResult Function(String message) successCreateUserState,
    required TResult Function(String message) errorCreateUserState,
    required TResult Function(File image) successPickProfileImageState,
    required TResult Function(String message) errorPickProfileImageState,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authInitial,
    TResult? Function()? loading,
    TResult? Function(String message)? successLoginState,
    TResult? Function(String message)? errorLoginState,
    TResult? Function(String message)? successSignupState,
    TResult? Function(String message)? errorSignupState,
    TResult? Function(String message)? successCreateUserState,
    TResult? Function(String message)? errorCreateUserState,
    TResult? Function(File image)? successPickProfileImageState,
    TResult? Function(String message)? errorPickProfileImageState,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authInitial,
    TResult Function()? loading,
    TResult Function(String message)? successLoginState,
    TResult Function(String message)? errorLoginState,
    TResult Function(String message)? successSignupState,
    TResult Function(String message)? errorSignupState,
    TResult Function(String message)? successCreateUserState,
    TResult Function(String message)? errorCreateUserState,
    TResult Function(File image)? successPickProfileImageState,
    TResult Function(String message)? errorPickProfileImageState,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthInitial value) authInitial,
    required TResult Function(_loading value) loading,
    required TResult Function(_successLoginState value) successLoginState,
    required TResult Function(_errorLoginState value) errorLoginState,
    required TResult Function(_successSignupState value) successSignupState,
    required TResult Function(_errorSignupState value) errorSignupState,
    required TResult Function(_successCreateUserState value)
        successCreateUserState,
    required TResult Function(_errorCreateUserState value) errorCreateUserState,
    required TResult Function(_successPickProfileImageState value)
        successPickProfileImageState,
    required TResult Function(_errorPickProfileImageState value)
        errorPickProfileImageState,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthInitial value)? authInitial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_successLoginState value)? successLoginState,
    TResult? Function(_errorLoginState value)? errorLoginState,
    TResult? Function(_successSignupState value)? successSignupState,
    TResult? Function(_errorSignupState value)? errorSignupState,
    TResult? Function(_successCreateUserState value)? successCreateUserState,
    TResult? Function(_errorCreateUserState value)? errorCreateUserState,
    TResult? Function(_successPickProfileImageState value)?
        successPickProfileImageState,
    TResult? Function(_errorPickProfileImageState value)?
        errorPickProfileImageState,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthInitial value)? authInitial,
    TResult Function(_loading value)? loading,
    TResult Function(_successLoginState value)? successLoginState,
    TResult Function(_errorLoginState value)? errorLoginState,
    TResult Function(_successSignupState value)? successSignupState,
    TResult Function(_errorSignupState value)? errorSignupState,
    TResult Function(_successCreateUserState value)? successCreateUserState,
    TResult Function(_errorCreateUserState value)? errorCreateUserState,
    TResult Function(_successPickProfileImageState value)?
        successPickProfileImageState,
    TResult Function(_errorPickProfileImageState value)?
        errorPickProfileImageState,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _loading implements AuthState {
  const factory _loading() = _$_loading;
}

/// @nodoc
abstract class _$$_successLoginStateCopyWith<$Res> {
  factory _$$_successLoginStateCopyWith(_$_successLoginState value,
          $Res Function(_$_successLoginState) then) =
      __$$_successLoginStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_successLoginStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_successLoginState>
    implements _$$_successLoginStateCopyWith<$Res> {
  __$$_successLoginStateCopyWithImpl(
      _$_successLoginState _value, $Res Function(_$_successLoginState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_successLoginState(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_successLoginState implements _successLoginState {
  const _$_successLoginState(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthState.successLoginState(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_successLoginState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_successLoginStateCopyWith<_$_successLoginState> get copyWith =>
      __$$_successLoginStateCopyWithImpl<_$_successLoginState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authInitial,
    required TResult Function() loading,
    required TResult Function(String message) successLoginState,
    required TResult Function(String message) errorLoginState,
    required TResult Function(String message) successSignupState,
    required TResult Function(String message) errorSignupState,
    required TResult Function(String message) successCreateUserState,
    required TResult Function(String message) errorCreateUserState,
    required TResult Function(File image) successPickProfileImageState,
    required TResult Function(String message) errorPickProfileImageState,
  }) {
    return successLoginState(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authInitial,
    TResult? Function()? loading,
    TResult? Function(String message)? successLoginState,
    TResult? Function(String message)? errorLoginState,
    TResult? Function(String message)? successSignupState,
    TResult? Function(String message)? errorSignupState,
    TResult? Function(String message)? successCreateUserState,
    TResult? Function(String message)? errorCreateUserState,
    TResult? Function(File image)? successPickProfileImageState,
    TResult? Function(String message)? errorPickProfileImageState,
  }) {
    return successLoginState?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authInitial,
    TResult Function()? loading,
    TResult Function(String message)? successLoginState,
    TResult Function(String message)? errorLoginState,
    TResult Function(String message)? successSignupState,
    TResult Function(String message)? errorSignupState,
    TResult Function(String message)? successCreateUserState,
    TResult Function(String message)? errorCreateUserState,
    TResult Function(File image)? successPickProfileImageState,
    TResult Function(String message)? errorPickProfileImageState,
    required TResult orElse(),
  }) {
    if (successLoginState != null) {
      return successLoginState(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthInitial value) authInitial,
    required TResult Function(_loading value) loading,
    required TResult Function(_successLoginState value) successLoginState,
    required TResult Function(_errorLoginState value) errorLoginState,
    required TResult Function(_successSignupState value) successSignupState,
    required TResult Function(_errorSignupState value) errorSignupState,
    required TResult Function(_successCreateUserState value)
        successCreateUserState,
    required TResult Function(_errorCreateUserState value) errorCreateUserState,
    required TResult Function(_successPickProfileImageState value)
        successPickProfileImageState,
    required TResult Function(_errorPickProfileImageState value)
        errorPickProfileImageState,
  }) {
    return successLoginState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthInitial value)? authInitial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_successLoginState value)? successLoginState,
    TResult? Function(_errorLoginState value)? errorLoginState,
    TResult? Function(_successSignupState value)? successSignupState,
    TResult? Function(_errorSignupState value)? errorSignupState,
    TResult? Function(_successCreateUserState value)? successCreateUserState,
    TResult? Function(_errorCreateUserState value)? errorCreateUserState,
    TResult? Function(_successPickProfileImageState value)?
        successPickProfileImageState,
    TResult? Function(_errorPickProfileImageState value)?
        errorPickProfileImageState,
  }) {
    return successLoginState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthInitial value)? authInitial,
    TResult Function(_loading value)? loading,
    TResult Function(_successLoginState value)? successLoginState,
    TResult Function(_errorLoginState value)? errorLoginState,
    TResult Function(_successSignupState value)? successSignupState,
    TResult Function(_errorSignupState value)? errorSignupState,
    TResult Function(_successCreateUserState value)? successCreateUserState,
    TResult Function(_errorCreateUserState value)? errorCreateUserState,
    TResult Function(_successPickProfileImageState value)?
        successPickProfileImageState,
    TResult Function(_errorPickProfileImageState value)?
        errorPickProfileImageState,
    required TResult orElse(),
  }) {
    if (successLoginState != null) {
      return successLoginState(this);
    }
    return orElse();
  }
}

abstract class _successLoginState implements AuthState {
  const factory _successLoginState(final String message) = _$_successLoginState;

  String get message;
  @JsonKey(ignore: true)
  _$$_successLoginStateCopyWith<_$_successLoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_errorLoginStateCopyWith<$Res> {
  factory _$$_errorLoginStateCopyWith(
          _$_errorLoginState value, $Res Function(_$_errorLoginState) then) =
      __$$_errorLoginStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_errorLoginStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_errorLoginState>
    implements _$$_errorLoginStateCopyWith<$Res> {
  __$$_errorLoginStateCopyWithImpl(
      _$_errorLoginState _value, $Res Function(_$_errorLoginState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_errorLoginState(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_errorLoginState implements _errorLoginState {
  const _$_errorLoginState(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthState.errorLoginState(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_errorLoginState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_errorLoginStateCopyWith<_$_errorLoginState> get copyWith =>
      __$$_errorLoginStateCopyWithImpl<_$_errorLoginState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authInitial,
    required TResult Function() loading,
    required TResult Function(String message) successLoginState,
    required TResult Function(String message) errorLoginState,
    required TResult Function(String message) successSignupState,
    required TResult Function(String message) errorSignupState,
    required TResult Function(String message) successCreateUserState,
    required TResult Function(String message) errorCreateUserState,
    required TResult Function(File image) successPickProfileImageState,
    required TResult Function(String message) errorPickProfileImageState,
  }) {
    return errorLoginState(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authInitial,
    TResult? Function()? loading,
    TResult? Function(String message)? successLoginState,
    TResult? Function(String message)? errorLoginState,
    TResult? Function(String message)? successSignupState,
    TResult? Function(String message)? errorSignupState,
    TResult? Function(String message)? successCreateUserState,
    TResult? Function(String message)? errorCreateUserState,
    TResult? Function(File image)? successPickProfileImageState,
    TResult? Function(String message)? errorPickProfileImageState,
  }) {
    return errorLoginState?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authInitial,
    TResult Function()? loading,
    TResult Function(String message)? successLoginState,
    TResult Function(String message)? errorLoginState,
    TResult Function(String message)? successSignupState,
    TResult Function(String message)? errorSignupState,
    TResult Function(String message)? successCreateUserState,
    TResult Function(String message)? errorCreateUserState,
    TResult Function(File image)? successPickProfileImageState,
    TResult Function(String message)? errorPickProfileImageState,
    required TResult orElse(),
  }) {
    if (errorLoginState != null) {
      return errorLoginState(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthInitial value) authInitial,
    required TResult Function(_loading value) loading,
    required TResult Function(_successLoginState value) successLoginState,
    required TResult Function(_errorLoginState value) errorLoginState,
    required TResult Function(_successSignupState value) successSignupState,
    required TResult Function(_errorSignupState value) errorSignupState,
    required TResult Function(_successCreateUserState value)
        successCreateUserState,
    required TResult Function(_errorCreateUserState value) errorCreateUserState,
    required TResult Function(_successPickProfileImageState value)
        successPickProfileImageState,
    required TResult Function(_errorPickProfileImageState value)
        errorPickProfileImageState,
  }) {
    return errorLoginState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthInitial value)? authInitial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_successLoginState value)? successLoginState,
    TResult? Function(_errorLoginState value)? errorLoginState,
    TResult? Function(_successSignupState value)? successSignupState,
    TResult? Function(_errorSignupState value)? errorSignupState,
    TResult? Function(_successCreateUserState value)? successCreateUserState,
    TResult? Function(_errorCreateUserState value)? errorCreateUserState,
    TResult? Function(_successPickProfileImageState value)?
        successPickProfileImageState,
    TResult? Function(_errorPickProfileImageState value)?
        errorPickProfileImageState,
  }) {
    return errorLoginState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthInitial value)? authInitial,
    TResult Function(_loading value)? loading,
    TResult Function(_successLoginState value)? successLoginState,
    TResult Function(_errorLoginState value)? errorLoginState,
    TResult Function(_successSignupState value)? successSignupState,
    TResult Function(_errorSignupState value)? errorSignupState,
    TResult Function(_successCreateUserState value)? successCreateUserState,
    TResult Function(_errorCreateUserState value)? errorCreateUserState,
    TResult Function(_successPickProfileImageState value)?
        successPickProfileImageState,
    TResult Function(_errorPickProfileImageState value)?
        errorPickProfileImageState,
    required TResult orElse(),
  }) {
    if (errorLoginState != null) {
      return errorLoginState(this);
    }
    return orElse();
  }
}

abstract class _errorLoginState implements AuthState {
  const factory _errorLoginState(final String message) = _$_errorLoginState;

  String get message;
  @JsonKey(ignore: true)
  _$$_errorLoginStateCopyWith<_$_errorLoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_successSignupStateCopyWith<$Res> {
  factory _$$_successSignupStateCopyWith(_$_successSignupState value,
          $Res Function(_$_successSignupState) then) =
      __$$_successSignupStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_successSignupStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_successSignupState>
    implements _$$_successSignupStateCopyWith<$Res> {
  __$$_successSignupStateCopyWithImpl(
      _$_successSignupState _value, $Res Function(_$_successSignupState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_successSignupState(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_successSignupState implements _successSignupState {
  const _$_successSignupState(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthState.successSignupState(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_successSignupState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_successSignupStateCopyWith<_$_successSignupState> get copyWith =>
      __$$_successSignupStateCopyWithImpl<_$_successSignupState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authInitial,
    required TResult Function() loading,
    required TResult Function(String message) successLoginState,
    required TResult Function(String message) errorLoginState,
    required TResult Function(String message) successSignupState,
    required TResult Function(String message) errorSignupState,
    required TResult Function(String message) successCreateUserState,
    required TResult Function(String message) errorCreateUserState,
    required TResult Function(File image) successPickProfileImageState,
    required TResult Function(String message) errorPickProfileImageState,
  }) {
    return successSignupState(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authInitial,
    TResult? Function()? loading,
    TResult? Function(String message)? successLoginState,
    TResult? Function(String message)? errorLoginState,
    TResult? Function(String message)? successSignupState,
    TResult? Function(String message)? errorSignupState,
    TResult? Function(String message)? successCreateUserState,
    TResult? Function(String message)? errorCreateUserState,
    TResult? Function(File image)? successPickProfileImageState,
    TResult? Function(String message)? errorPickProfileImageState,
  }) {
    return successSignupState?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authInitial,
    TResult Function()? loading,
    TResult Function(String message)? successLoginState,
    TResult Function(String message)? errorLoginState,
    TResult Function(String message)? successSignupState,
    TResult Function(String message)? errorSignupState,
    TResult Function(String message)? successCreateUserState,
    TResult Function(String message)? errorCreateUserState,
    TResult Function(File image)? successPickProfileImageState,
    TResult Function(String message)? errorPickProfileImageState,
    required TResult orElse(),
  }) {
    if (successSignupState != null) {
      return successSignupState(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthInitial value) authInitial,
    required TResult Function(_loading value) loading,
    required TResult Function(_successLoginState value) successLoginState,
    required TResult Function(_errorLoginState value) errorLoginState,
    required TResult Function(_successSignupState value) successSignupState,
    required TResult Function(_errorSignupState value) errorSignupState,
    required TResult Function(_successCreateUserState value)
        successCreateUserState,
    required TResult Function(_errorCreateUserState value) errorCreateUserState,
    required TResult Function(_successPickProfileImageState value)
        successPickProfileImageState,
    required TResult Function(_errorPickProfileImageState value)
        errorPickProfileImageState,
  }) {
    return successSignupState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthInitial value)? authInitial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_successLoginState value)? successLoginState,
    TResult? Function(_errorLoginState value)? errorLoginState,
    TResult? Function(_successSignupState value)? successSignupState,
    TResult? Function(_errorSignupState value)? errorSignupState,
    TResult? Function(_successCreateUserState value)? successCreateUserState,
    TResult? Function(_errorCreateUserState value)? errorCreateUserState,
    TResult? Function(_successPickProfileImageState value)?
        successPickProfileImageState,
    TResult? Function(_errorPickProfileImageState value)?
        errorPickProfileImageState,
  }) {
    return successSignupState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthInitial value)? authInitial,
    TResult Function(_loading value)? loading,
    TResult Function(_successLoginState value)? successLoginState,
    TResult Function(_errorLoginState value)? errorLoginState,
    TResult Function(_successSignupState value)? successSignupState,
    TResult Function(_errorSignupState value)? errorSignupState,
    TResult Function(_successCreateUserState value)? successCreateUserState,
    TResult Function(_errorCreateUserState value)? errorCreateUserState,
    TResult Function(_successPickProfileImageState value)?
        successPickProfileImageState,
    TResult Function(_errorPickProfileImageState value)?
        errorPickProfileImageState,
    required TResult orElse(),
  }) {
    if (successSignupState != null) {
      return successSignupState(this);
    }
    return orElse();
  }
}

abstract class _successSignupState implements AuthState {
  const factory _successSignupState(final String message) =
      _$_successSignupState;

  String get message;
  @JsonKey(ignore: true)
  _$$_successSignupStateCopyWith<_$_successSignupState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_errorSignupStateCopyWith<$Res> {
  factory _$$_errorSignupStateCopyWith(
          _$_errorSignupState value, $Res Function(_$_errorSignupState) then) =
      __$$_errorSignupStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_errorSignupStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_errorSignupState>
    implements _$$_errorSignupStateCopyWith<$Res> {
  __$$_errorSignupStateCopyWithImpl(
      _$_errorSignupState _value, $Res Function(_$_errorSignupState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_errorSignupState(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_errorSignupState implements _errorSignupState {
  const _$_errorSignupState(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthState.errorSignupState(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_errorSignupState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_errorSignupStateCopyWith<_$_errorSignupState> get copyWith =>
      __$$_errorSignupStateCopyWithImpl<_$_errorSignupState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authInitial,
    required TResult Function() loading,
    required TResult Function(String message) successLoginState,
    required TResult Function(String message) errorLoginState,
    required TResult Function(String message) successSignupState,
    required TResult Function(String message) errorSignupState,
    required TResult Function(String message) successCreateUserState,
    required TResult Function(String message) errorCreateUserState,
    required TResult Function(File image) successPickProfileImageState,
    required TResult Function(String message) errorPickProfileImageState,
  }) {
    return errorSignupState(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authInitial,
    TResult? Function()? loading,
    TResult? Function(String message)? successLoginState,
    TResult? Function(String message)? errorLoginState,
    TResult? Function(String message)? successSignupState,
    TResult? Function(String message)? errorSignupState,
    TResult? Function(String message)? successCreateUserState,
    TResult? Function(String message)? errorCreateUserState,
    TResult? Function(File image)? successPickProfileImageState,
    TResult? Function(String message)? errorPickProfileImageState,
  }) {
    return errorSignupState?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authInitial,
    TResult Function()? loading,
    TResult Function(String message)? successLoginState,
    TResult Function(String message)? errorLoginState,
    TResult Function(String message)? successSignupState,
    TResult Function(String message)? errorSignupState,
    TResult Function(String message)? successCreateUserState,
    TResult Function(String message)? errorCreateUserState,
    TResult Function(File image)? successPickProfileImageState,
    TResult Function(String message)? errorPickProfileImageState,
    required TResult orElse(),
  }) {
    if (errorSignupState != null) {
      return errorSignupState(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthInitial value) authInitial,
    required TResult Function(_loading value) loading,
    required TResult Function(_successLoginState value) successLoginState,
    required TResult Function(_errorLoginState value) errorLoginState,
    required TResult Function(_successSignupState value) successSignupState,
    required TResult Function(_errorSignupState value) errorSignupState,
    required TResult Function(_successCreateUserState value)
        successCreateUserState,
    required TResult Function(_errorCreateUserState value) errorCreateUserState,
    required TResult Function(_successPickProfileImageState value)
        successPickProfileImageState,
    required TResult Function(_errorPickProfileImageState value)
        errorPickProfileImageState,
  }) {
    return errorSignupState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthInitial value)? authInitial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_successLoginState value)? successLoginState,
    TResult? Function(_errorLoginState value)? errorLoginState,
    TResult? Function(_successSignupState value)? successSignupState,
    TResult? Function(_errorSignupState value)? errorSignupState,
    TResult? Function(_successCreateUserState value)? successCreateUserState,
    TResult? Function(_errorCreateUserState value)? errorCreateUserState,
    TResult? Function(_successPickProfileImageState value)?
        successPickProfileImageState,
    TResult? Function(_errorPickProfileImageState value)?
        errorPickProfileImageState,
  }) {
    return errorSignupState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthInitial value)? authInitial,
    TResult Function(_loading value)? loading,
    TResult Function(_successLoginState value)? successLoginState,
    TResult Function(_errorLoginState value)? errorLoginState,
    TResult Function(_successSignupState value)? successSignupState,
    TResult Function(_errorSignupState value)? errorSignupState,
    TResult Function(_successCreateUserState value)? successCreateUserState,
    TResult Function(_errorCreateUserState value)? errorCreateUserState,
    TResult Function(_successPickProfileImageState value)?
        successPickProfileImageState,
    TResult Function(_errorPickProfileImageState value)?
        errorPickProfileImageState,
    required TResult orElse(),
  }) {
    if (errorSignupState != null) {
      return errorSignupState(this);
    }
    return orElse();
  }
}

abstract class _errorSignupState implements AuthState {
  const factory _errorSignupState(final String message) = _$_errorSignupState;

  String get message;
  @JsonKey(ignore: true)
  _$$_errorSignupStateCopyWith<_$_errorSignupState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_successCreateUserStateCopyWith<$Res> {
  factory _$$_successCreateUserStateCopyWith(_$_successCreateUserState value,
          $Res Function(_$_successCreateUserState) then) =
      __$$_successCreateUserStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_successCreateUserStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_successCreateUserState>
    implements _$$_successCreateUserStateCopyWith<$Res> {
  __$$_successCreateUserStateCopyWithImpl(_$_successCreateUserState _value,
      $Res Function(_$_successCreateUserState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_successCreateUserState(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_successCreateUserState implements _successCreateUserState {
  const _$_successCreateUserState(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthState.successCreateUserState(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_successCreateUserState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_successCreateUserStateCopyWith<_$_successCreateUserState> get copyWith =>
      __$$_successCreateUserStateCopyWithImpl<_$_successCreateUserState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authInitial,
    required TResult Function() loading,
    required TResult Function(String message) successLoginState,
    required TResult Function(String message) errorLoginState,
    required TResult Function(String message) successSignupState,
    required TResult Function(String message) errorSignupState,
    required TResult Function(String message) successCreateUserState,
    required TResult Function(String message) errorCreateUserState,
    required TResult Function(File image) successPickProfileImageState,
    required TResult Function(String message) errorPickProfileImageState,
  }) {
    return successCreateUserState(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authInitial,
    TResult? Function()? loading,
    TResult? Function(String message)? successLoginState,
    TResult? Function(String message)? errorLoginState,
    TResult? Function(String message)? successSignupState,
    TResult? Function(String message)? errorSignupState,
    TResult? Function(String message)? successCreateUserState,
    TResult? Function(String message)? errorCreateUserState,
    TResult? Function(File image)? successPickProfileImageState,
    TResult? Function(String message)? errorPickProfileImageState,
  }) {
    return successCreateUserState?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authInitial,
    TResult Function()? loading,
    TResult Function(String message)? successLoginState,
    TResult Function(String message)? errorLoginState,
    TResult Function(String message)? successSignupState,
    TResult Function(String message)? errorSignupState,
    TResult Function(String message)? successCreateUserState,
    TResult Function(String message)? errorCreateUserState,
    TResult Function(File image)? successPickProfileImageState,
    TResult Function(String message)? errorPickProfileImageState,
    required TResult orElse(),
  }) {
    if (successCreateUserState != null) {
      return successCreateUserState(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthInitial value) authInitial,
    required TResult Function(_loading value) loading,
    required TResult Function(_successLoginState value) successLoginState,
    required TResult Function(_errorLoginState value) errorLoginState,
    required TResult Function(_successSignupState value) successSignupState,
    required TResult Function(_errorSignupState value) errorSignupState,
    required TResult Function(_successCreateUserState value)
        successCreateUserState,
    required TResult Function(_errorCreateUserState value) errorCreateUserState,
    required TResult Function(_successPickProfileImageState value)
        successPickProfileImageState,
    required TResult Function(_errorPickProfileImageState value)
        errorPickProfileImageState,
  }) {
    return successCreateUserState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthInitial value)? authInitial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_successLoginState value)? successLoginState,
    TResult? Function(_errorLoginState value)? errorLoginState,
    TResult? Function(_successSignupState value)? successSignupState,
    TResult? Function(_errorSignupState value)? errorSignupState,
    TResult? Function(_successCreateUserState value)? successCreateUserState,
    TResult? Function(_errorCreateUserState value)? errorCreateUserState,
    TResult? Function(_successPickProfileImageState value)?
        successPickProfileImageState,
    TResult? Function(_errorPickProfileImageState value)?
        errorPickProfileImageState,
  }) {
    return successCreateUserState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthInitial value)? authInitial,
    TResult Function(_loading value)? loading,
    TResult Function(_successLoginState value)? successLoginState,
    TResult Function(_errorLoginState value)? errorLoginState,
    TResult Function(_successSignupState value)? successSignupState,
    TResult Function(_errorSignupState value)? errorSignupState,
    TResult Function(_successCreateUserState value)? successCreateUserState,
    TResult Function(_errorCreateUserState value)? errorCreateUserState,
    TResult Function(_successPickProfileImageState value)?
        successPickProfileImageState,
    TResult Function(_errorPickProfileImageState value)?
        errorPickProfileImageState,
    required TResult orElse(),
  }) {
    if (successCreateUserState != null) {
      return successCreateUserState(this);
    }
    return orElse();
  }
}

abstract class _successCreateUserState implements AuthState {
  const factory _successCreateUserState(final String message) =
      _$_successCreateUserState;

  String get message;
  @JsonKey(ignore: true)
  _$$_successCreateUserStateCopyWith<_$_successCreateUserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_errorCreateUserStateCopyWith<$Res> {
  factory _$$_errorCreateUserStateCopyWith(_$_errorCreateUserState value,
          $Res Function(_$_errorCreateUserState) then) =
      __$$_errorCreateUserStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_errorCreateUserStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_errorCreateUserState>
    implements _$$_errorCreateUserStateCopyWith<$Res> {
  __$$_errorCreateUserStateCopyWithImpl(_$_errorCreateUserState _value,
      $Res Function(_$_errorCreateUserState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_errorCreateUserState(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_errorCreateUserState implements _errorCreateUserState {
  const _$_errorCreateUserState(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthState.errorCreateUserState(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_errorCreateUserState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_errorCreateUserStateCopyWith<_$_errorCreateUserState> get copyWith =>
      __$$_errorCreateUserStateCopyWithImpl<_$_errorCreateUserState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authInitial,
    required TResult Function() loading,
    required TResult Function(String message) successLoginState,
    required TResult Function(String message) errorLoginState,
    required TResult Function(String message) successSignupState,
    required TResult Function(String message) errorSignupState,
    required TResult Function(String message) successCreateUserState,
    required TResult Function(String message) errorCreateUserState,
    required TResult Function(File image) successPickProfileImageState,
    required TResult Function(String message) errorPickProfileImageState,
  }) {
    return errorCreateUserState(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authInitial,
    TResult? Function()? loading,
    TResult? Function(String message)? successLoginState,
    TResult? Function(String message)? errorLoginState,
    TResult? Function(String message)? successSignupState,
    TResult? Function(String message)? errorSignupState,
    TResult? Function(String message)? successCreateUserState,
    TResult? Function(String message)? errorCreateUserState,
    TResult? Function(File image)? successPickProfileImageState,
    TResult? Function(String message)? errorPickProfileImageState,
  }) {
    return errorCreateUserState?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authInitial,
    TResult Function()? loading,
    TResult Function(String message)? successLoginState,
    TResult Function(String message)? errorLoginState,
    TResult Function(String message)? successSignupState,
    TResult Function(String message)? errorSignupState,
    TResult Function(String message)? successCreateUserState,
    TResult Function(String message)? errorCreateUserState,
    TResult Function(File image)? successPickProfileImageState,
    TResult Function(String message)? errorPickProfileImageState,
    required TResult orElse(),
  }) {
    if (errorCreateUserState != null) {
      return errorCreateUserState(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthInitial value) authInitial,
    required TResult Function(_loading value) loading,
    required TResult Function(_successLoginState value) successLoginState,
    required TResult Function(_errorLoginState value) errorLoginState,
    required TResult Function(_successSignupState value) successSignupState,
    required TResult Function(_errorSignupState value) errorSignupState,
    required TResult Function(_successCreateUserState value)
        successCreateUserState,
    required TResult Function(_errorCreateUserState value) errorCreateUserState,
    required TResult Function(_successPickProfileImageState value)
        successPickProfileImageState,
    required TResult Function(_errorPickProfileImageState value)
        errorPickProfileImageState,
  }) {
    return errorCreateUserState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthInitial value)? authInitial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_successLoginState value)? successLoginState,
    TResult? Function(_errorLoginState value)? errorLoginState,
    TResult? Function(_successSignupState value)? successSignupState,
    TResult? Function(_errorSignupState value)? errorSignupState,
    TResult? Function(_successCreateUserState value)? successCreateUserState,
    TResult? Function(_errorCreateUserState value)? errorCreateUserState,
    TResult? Function(_successPickProfileImageState value)?
        successPickProfileImageState,
    TResult? Function(_errorPickProfileImageState value)?
        errorPickProfileImageState,
  }) {
    return errorCreateUserState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthInitial value)? authInitial,
    TResult Function(_loading value)? loading,
    TResult Function(_successLoginState value)? successLoginState,
    TResult Function(_errorLoginState value)? errorLoginState,
    TResult Function(_successSignupState value)? successSignupState,
    TResult Function(_errorSignupState value)? errorSignupState,
    TResult Function(_successCreateUserState value)? successCreateUserState,
    TResult Function(_errorCreateUserState value)? errorCreateUserState,
    TResult Function(_successPickProfileImageState value)?
        successPickProfileImageState,
    TResult Function(_errorPickProfileImageState value)?
        errorPickProfileImageState,
    required TResult orElse(),
  }) {
    if (errorCreateUserState != null) {
      return errorCreateUserState(this);
    }
    return orElse();
  }
}

abstract class _errorCreateUserState implements AuthState {
  const factory _errorCreateUserState(final String message) =
      _$_errorCreateUserState;

  String get message;
  @JsonKey(ignore: true)
  _$$_errorCreateUserStateCopyWith<_$_errorCreateUserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_successPickProfileImageStateCopyWith<$Res> {
  factory _$$_successPickProfileImageStateCopyWith(
          _$_successPickProfileImageState value,
          $Res Function(_$_successPickProfileImageState) then) =
      __$$_successPickProfileImageStateCopyWithImpl<$Res>;
  @useResult
  $Res call({File image});
}

/// @nodoc
class __$$_successPickProfileImageStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_successPickProfileImageState>
    implements _$$_successPickProfileImageStateCopyWith<$Res> {
  __$$_successPickProfileImageStateCopyWithImpl(
      _$_successPickProfileImageState _value,
      $Res Function(_$_successPickProfileImageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
  }) {
    return _then(_$_successPickProfileImageState(
      null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$_successPickProfileImageState implements _successPickProfileImageState {
  const _$_successPickProfileImageState(this.image);

  @override
  final File image;

  @override
  String toString() {
    return 'AuthState.successPickProfileImageState(image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_successPickProfileImageState &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_successPickProfileImageStateCopyWith<_$_successPickProfileImageState>
      get copyWith => __$$_successPickProfileImageStateCopyWithImpl<
          _$_successPickProfileImageState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authInitial,
    required TResult Function() loading,
    required TResult Function(String message) successLoginState,
    required TResult Function(String message) errorLoginState,
    required TResult Function(String message) successSignupState,
    required TResult Function(String message) errorSignupState,
    required TResult Function(String message) successCreateUserState,
    required TResult Function(String message) errorCreateUserState,
    required TResult Function(File image) successPickProfileImageState,
    required TResult Function(String message) errorPickProfileImageState,
  }) {
    return successPickProfileImageState(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authInitial,
    TResult? Function()? loading,
    TResult? Function(String message)? successLoginState,
    TResult? Function(String message)? errorLoginState,
    TResult? Function(String message)? successSignupState,
    TResult? Function(String message)? errorSignupState,
    TResult? Function(String message)? successCreateUserState,
    TResult? Function(String message)? errorCreateUserState,
    TResult? Function(File image)? successPickProfileImageState,
    TResult? Function(String message)? errorPickProfileImageState,
  }) {
    return successPickProfileImageState?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authInitial,
    TResult Function()? loading,
    TResult Function(String message)? successLoginState,
    TResult Function(String message)? errorLoginState,
    TResult Function(String message)? successSignupState,
    TResult Function(String message)? errorSignupState,
    TResult Function(String message)? successCreateUserState,
    TResult Function(String message)? errorCreateUserState,
    TResult Function(File image)? successPickProfileImageState,
    TResult Function(String message)? errorPickProfileImageState,
    required TResult orElse(),
  }) {
    if (successPickProfileImageState != null) {
      return successPickProfileImageState(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthInitial value) authInitial,
    required TResult Function(_loading value) loading,
    required TResult Function(_successLoginState value) successLoginState,
    required TResult Function(_errorLoginState value) errorLoginState,
    required TResult Function(_successSignupState value) successSignupState,
    required TResult Function(_errorSignupState value) errorSignupState,
    required TResult Function(_successCreateUserState value)
        successCreateUserState,
    required TResult Function(_errorCreateUserState value) errorCreateUserState,
    required TResult Function(_successPickProfileImageState value)
        successPickProfileImageState,
    required TResult Function(_errorPickProfileImageState value)
        errorPickProfileImageState,
  }) {
    return successPickProfileImageState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthInitial value)? authInitial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_successLoginState value)? successLoginState,
    TResult? Function(_errorLoginState value)? errorLoginState,
    TResult? Function(_successSignupState value)? successSignupState,
    TResult? Function(_errorSignupState value)? errorSignupState,
    TResult? Function(_successCreateUserState value)? successCreateUserState,
    TResult? Function(_errorCreateUserState value)? errorCreateUserState,
    TResult? Function(_successPickProfileImageState value)?
        successPickProfileImageState,
    TResult? Function(_errorPickProfileImageState value)?
        errorPickProfileImageState,
  }) {
    return successPickProfileImageState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthInitial value)? authInitial,
    TResult Function(_loading value)? loading,
    TResult Function(_successLoginState value)? successLoginState,
    TResult Function(_errorLoginState value)? errorLoginState,
    TResult Function(_successSignupState value)? successSignupState,
    TResult Function(_errorSignupState value)? errorSignupState,
    TResult Function(_successCreateUserState value)? successCreateUserState,
    TResult Function(_errorCreateUserState value)? errorCreateUserState,
    TResult Function(_successPickProfileImageState value)?
        successPickProfileImageState,
    TResult Function(_errorPickProfileImageState value)?
        errorPickProfileImageState,
    required TResult orElse(),
  }) {
    if (successPickProfileImageState != null) {
      return successPickProfileImageState(this);
    }
    return orElse();
  }
}

abstract class _successPickProfileImageState implements AuthState {
  const factory _successPickProfileImageState(final File image) =
      _$_successPickProfileImageState;

  File get image;
  @JsonKey(ignore: true)
  _$$_successPickProfileImageStateCopyWith<_$_successPickProfileImageState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_errorPickProfileImageStateCopyWith<$Res> {
  factory _$$_errorPickProfileImageStateCopyWith(
          _$_errorPickProfileImageState value,
          $Res Function(_$_errorPickProfileImageState) then) =
      __$$_errorPickProfileImageStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_errorPickProfileImageStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_errorPickProfileImageState>
    implements _$$_errorPickProfileImageStateCopyWith<$Res> {
  __$$_errorPickProfileImageStateCopyWithImpl(
      _$_errorPickProfileImageState _value,
      $Res Function(_$_errorPickProfileImageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_errorPickProfileImageState(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_errorPickProfileImageState implements _errorPickProfileImageState {
  const _$_errorPickProfileImageState(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthState.errorPickProfileImageState(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_errorPickProfileImageState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_errorPickProfileImageStateCopyWith<_$_errorPickProfileImageState>
      get copyWith => __$$_errorPickProfileImageStateCopyWithImpl<
          _$_errorPickProfileImageState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authInitial,
    required TResult Function() loading,
    required TResult Function(String message) successLoginState,
    required TResult Function(String message) errorLoginState,
    required TResult Function(String message) successSignupState,
    required TResult Function(String message) errorSignupState,
    required TResult Function(String message) successCreateUserState,
    required TResult Function(String message) errorCreateUserState,
    required TResult Function(File image) successPickProfileImageState,
    required TResult Function(String message) errorPickProfileImageState,
  }) {
    return errorPickProfileImageState(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authInitial,
    TResult? Function()? loading,
    TResult? Function(String message)? successLoginState,
    TResult? Function(String message)? errorLoginState,
    TResult? Function(String message)? successSignupState,
    TResult? Function(String message)? errorSignupState,
    TResult? Function(String message)? successCreateUserState,
    TResult? Function(String message)? errorCreateUserState,
    TResult? Function(File image)? successPickProfileImageState,
    TResult? Function(String message)? errorPickProfileImageState,
  }) {
    return errorPickProfileImageState?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authInitial,
    TResult Function()? loading,
    TResult Function(String message)? successLoginState,
    TResult Function(String message)? errorLoginState,
    TResult Function(String message)? successSignupState,
    TResult Function(String message)? errorSignupState,
    TResult Function(String message)? successCreateUserState,
    TResult Function(String message)? errorCreateUserState,
    TResult Function(File image)? successPickProfileImageState,
    TResult Function(String message)? errorPickProfileImageState,
    required TResult orElse(),
  }) {
    if (errorPickProfileImageState != null) {
      return errorPickProfileImageState(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthInitial value) authInitial,
    required TResult Function(_loading value) loading,
    required TResult Function(_successLoginState value) successLoginState,
    required TResult Function(_errorLoginState value) errorLoginState,
    required TResult Function(_successSignupState value) successSignupState,
    required TResult Function(_errorSignupState value) errorSignupState,
    required TResult Function(_successCreateUserState value)
        successCreateUserState,
    required TResult Function(_errorCreateUserState value) errorCreateUserState,
    required TResult Function(_successPickProfileImageState value)
        successPickProfileImageState,
    required TResult Function(_errorPickProfileImageState value)
        errorPickProfileImageState,
  }) {
    return errorPickProfileImageState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthInitial value)? authInitial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_successLoginState value)? successLoginState,
    TResult? Function(_errorLoginState value)? errorLoginState,
    TResult? Function(_successSignupState value)? successSignupState,
    TResult? Function(_errorSignupState value)? errorSignupState,
    TResult? Function(_successCreateUserState value)? successCreateUserState,
    TResult? Function(_errorCreateUserState value)? errorCreateUserState,
    TResult? Function(_successPickProfileImageState value)?
        successPickProfileImageState,
    TResult? Function(_errorPickProfileImageState value)?
        errorPickProfileImageState,
  }) {
    return errorPickProfileImageState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthInitial value)? authInitial,
    TResult Function(_loading value)? loading,
    TResult Function(_successLoginState value)? successLoginState,
    TResult Function(_errorLoginState value)? errorLoginState,
    TResult Function(_successSignupState value)? successSignupState,
    TResult Function(_errorSignupState value)? errorSignupState,
    TResult Function(_successCreateUserState value)? successCreateUserState,
    TResult Function(_errorCreateUserState value)? errorCreateUserState,
    TResult Function(_successPickProfileImageState value)?
        successPickProfileImageState,
    TResult Function(_errorPickProfileImageState value)?
        errorPickProfileImageState,
    required TResult orElse(),
  }) {
    if (errorPickProfileImageState != null) {
      return errorPickProfileImageState(this);
    }
    return orElse();
  }
}

abstract class _errorPickProfileImageState implements AuthState {
  const factory _errorPickProfileImageState(final String message) =
      _$_errorPickProfileImageState;

  String get message;
  @JsonKey(ignore: true)
  _$$_errorPickProfileImageStateCopyWith<_$_errorPickProfileImageState>
      get copyWith => throw _privateConstructorUsedError;
}
