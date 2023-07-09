// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_edit_delete_post_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddDeleteEditPostEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String userName, String userImage,
            String content, String date, File? image)
        addPostEvent,
    required TResult Function(String postId) deletePostEvent,
    required TResult Function(String postId, String content, File? image)
        editPostEvent,
    required TResult Function(ImageSource imageSource) pickImageEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String userName, String userImage,
            String content, String date, File? image)?
        addPostEvent,
    TResult? Function(String postId)? deletePostEvent,
    TResult? Function(String postId, String content, File? image)?
        editPostEvent,
    TResult? Function(ImageSource imageSource)? pickImageEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String userName, String userImage,
            String content, String date, File? image)?
        addPostEvent,
    TResult Function(String postId)? deletePostEvent,
    TResult Function(String postId, String content, File? image)? editPostEvent,
    TResult Function(ImageSource imageSource)? pickImageEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_addPostEvent value) addPostEvent,
    required TResult Function(_deletePostEvent value) deletePostEvent,
    required TResult Function(_editPostEvent value) editPostEvent,
    required TResult Function(_pickImageEvent value) pickImageEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_addPostEvent value)? addPostEvent,
    TResult? Function(_deletePostEvent value)? deletePostEvent,
    TResult? Function(_editPostEvent value)? editPostEvent,
    TResult? Function(_pickImageEvent value)? pickImageEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_addPostEvent value)? addPostEvent,
    TResult Function(_deletePostEvent value)? deletePostEvent,
    TResult Function(_editPostEvent value)? editPostEvent,
    TResult Function(_pickImageEvent value)? pickImageEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddDeleteEditPostEventCopyWith<$Res> {
  factory $AddDeleteEditPostEventCopyWith(AddDeleteEditPostEvent value,
          $Res Function(AddDeleteEditPostEvent) then) =
      _$AddDeleteEditPostEventCopyWithImpl<$Res, AddDeleteEditPostEvent>;
}

/// @nodoc
class _$AddDeleteEditPostEventCopyWithImpl<$Res,
        $Val extends AddDeleteEditPostEvent>
    implements $AddDeleteEditPostEventCopyWith<$Res> {
  _$AddDeleteEditPostEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_addPostEventCopyWith<$Res> {
  factory _$$_addPostEventCopyWith(
          _$_addPostEvent value, $Res Function(_$_addPostEvent) then) =
      __$$_addPostEventCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String userId,
      String userName,
      String userImage,
      String content,
      String date,
      File? image});
}

/// @nodoc
class __$$_addPostEventCopyWithImpl<$Res>
    extends _$AddDeleteEditPostEventCopyWithImpl<$Res, _$_addPostEvent>
    implements _$$_addPostEventCopyWith<$Res> {
  __$$_addPostEventCopyWithImpl(
      _$_addPostEvent _value, $Res Function(_$_addPostEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? userName = null,
    Object? userImage = null,
    Object? content = null,
    Object? date = null,
    Object? image = freezed,
  }) {
    return _then(_$_addPostEvent(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      null == userImage
          ? _value.userImage
          : userImage // ignore: cast_nullable_to_non_nullable
              as String,
      null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$_addPostEvent implements _addPostEvent {
  const _$_addPostEvent(this.userId, this.userName, this.userImage,
      this.content, this.date, this.image);

  @override
  final String userId;
  @override
  final String userName;
  @override
  final String userImage;
  @override
  final String content;
  @override
  final String date;
  @override
  final File? image;

  @override
  String toString() {
    return 'AddDeleteEditPostEvent.addPostEvent(userId: $userId, userName: $userName, userImage: $userImage, content: $content, date: $date, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_addPostEvent &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.userImage, userImage) ||
                other.userImage == userImage) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, userId, userName, userImage, content, date, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_addPostEventCopyWith<_$_addPostEvent> get copyWith =>
      __$$_addPostEventCopyWithImpl<_$_addPostEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String userName, String userImage,
            String content, String date, File? image)
        addPostEvent,
    required TResult Function(String postId) deletePostEvent,
    required TResult Function(String postId, String content, File? image)
        editPostEvent,
    required TResult Function(ImageSource imageSource) pickImageEvent,
  }) {
    return addPostEvent(userId, userName, userImage, content, date, image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String userName, String userImage,
            String content, String date, File? image)?
        addPostEvent,
    TResult? Function(String postId)? deletePostEvent,
    TResult? Function(String postId, String content, File? image)?
        editPostEvent,
    TResult? Function(ImageSource imageSource)? pickImageEvent,
  }) {
    return addPostEvent?.call(
        userId, userName, userImage, content, date, image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String userName, String userImage,
            String content, String date, File? image)?
        addPostEvent,
    TResult Function(String postId)? deletePostEvent,
    TResult Function(String postId, String content, File? image)? editPostEvent,
    TResult Function(ImageSource imageSource)? pickImageEvent,
    required TResult orElse(),
  }) {
    if (addPostEvent != null) {
      return addPostEvent(userId, userName, userImage, content, date, image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_addPostEvent value) addPostEvent,
    required TResult Function(_deletePostEvent value) deletePostEvent,
    required TResult Function(_editPostEvent value) editPostEvent,
    required TResult Function(_pickImageEvent value) pickImageEvent,
  }) {
    return addPostEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_addPostEvent value)? addPostEvent,
    TResult? Function(_deletePostEvent value)? deletePostEvent,
    TResult? Function(_editPostEvent value)? editPostEvent,
    TResult? Function(_pickImageEvent value)? pickImageEvent,
  }) {
    return addPostEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_addPostEvent value)? addPostEvent,
    TResult Function(_deletePostEvent value)? deletePostEvent,
    TResult Function(_editPostEvent value)? editPostEvent,
    TResult Function(_pickImageEvent value)? pickImageEvent,
    required TResult orElse(),
  }) {
    if (addPostEvent != null) {
      return addPostEvent(this);
    }
    return orElse();
  }
}

abstract class _addPostEvent implements AddDeleteEditPostEvent {
  const factory _addPostEvent(
      final String userId,
      final String userName,
      final String userImage,
      final String content,
      final String date,
      final File? image) = _$_addPostEvent;

  String get userId;
  String get userName;
  String get userImage;
  String get content;
  String get date;
  File? get image;
  @JsonKey(ignore: true)
  _$$_addPostEventCopyWith<_$_addPostEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_deletePostEventCopyWith<$Res> {
  factory _$$_deletePostEventCopyWith(
          _$_deletePostEvent value, $Res Function(_$_deletePostEvent) then) =
      __$$_deletePostEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String postId});
}

/// @nodoc
class __$$_deletePostEventCopyWithImpl<$Res>
    extends _$AddDeleteEditPostEventCopyWithImpl<$Res, _$_deletePostEvent>
    implements _$$_deletePostEventCopyWith<$Res> {
  __$$_deletePostEventCopyWithImpl(
      _$_deletePostEvent _value, $Res Function(_$_deletePostEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
  }) {
    return _then(_$_deletePostEvent(
      null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_deletePostEvent implements _deletePostEvent {
  const _$_deletePostEvent(this.postId);

  @override
  final String postId;

  @override
  String toString() {
    return 'AddDeleteEditPostEvent.deletePostEvent(postId: $postId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_deletePostEvent &&
            (identical(other.postId, postId) || other.postId == postId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, postId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_deletePostEventCopyWith<_$_deletePostEvent> get copyWith =>
      __$$_deletePostEventCopyWithImpl<_$_deletePostEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String userName, String userImage,
            String content, String date, File? image)
        addPostEvent,
    required TResult Function(String postId) deletePostEvent,
    required TResult Function(String postId, String content, File? image)
        editPostEvent,
    required TResult Function(ImageSource imageSource) pickImageEvent,
  }) {
    return deletePostEvent(postId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String userName, String userImage,
            String content, String date, File? image)?
        addPostEvent,
    TResult? Function(String postId)? deletePostEvent,
    TResult? Function(String postId, String content, File? image)?
        editPostEvent,
    TResult? Function(ImageSource imageSource)? pickImageEvent,
  }) {
    return deletePostEvent?.call(postId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String userName, String userImage,
            String content, String date, File? image)?
        addPostEvent,
    TResult Function(String postId)? deletePostEvent,
    TResult Function(String postId, String content, File? image)? editPostEvent,
    TResult Function(ImageSource imageSource)? pickImageEvent,
    required TResult orElse(),
  }) {
    if (deletePostEvent != null) {
      return deletePostEvent(postId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_addPostEvent value) addPostEvent,
    required TResult Function(_deletePostEvent value) deletePostEvent,
    required TResult Function(_editPostEvent value) editPostEvent,
    required TResult Function(_pickImageEvent value) pickImageEvent,
  }) {
    return deletePostEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_addPostEvent value)? addPostEvent,
    TResult? Function(_deletePostEvent value)? deletePostEvent,
    TResult? Function(_editPostEvent value)? editPostEvent,
    TResult? Function(_pickImageEvent value)? pickImageEvent,
  }) {
    return deletePostEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_addPostEvent value)? addPostEvent,
    TResult Function(_deletePostEvent value)? deletePostEvent,
    TResult Function(_editPostEvent value)? editPostEvent,
    TResult Function(_pickImageEvent value)? pickImageEvent,
    required TResult orElse(),
  }) {
    if (deletePostEvent != null) {
      return deletePostEvent(this);
    }
    return orElse();
  }
}

abstract class _deletePostEvent implements AddDeleteEditPostEvent {
  const factory _deletePostEvent(final String postId) = _$_deletePostEvent;

  String get postId;
  @JsonKey(ignore: true)
  _$$_deletePostEventCopyWith<_$_deletePostEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_editPostEventCopyWith<$Res> {
  factory _$$_editPostEventCopyWith(
          _$_editPostEvent value, $Res Function(_$_editPostEvent) then) =
      __$$_editPostEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String postId, String content, File? image});
}

/// @nodoc
class __$$_editPostEventCopyWithImpl<$Res>
    extends _$AddDeleteEditPostEventCopyWithImpl<$Res, _$_editPostEvent>
    implements _$$_editPostEventCopyWith<$Res> {
  __$$_editPostEventCopyWithImpl(
      _$_editPostEvent _value, $Res Function(_$_editPostEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
    Object? content = null,
    Object? image = freezed,
  }) {
    return _then(_$_editPostEvent(
      null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$_editPostEvent implements _editPostEvent {
  const _$_editPostEvent(this.postId, this.content, this.image);

  @override
  final String postId;
  @override
  final String content;
  @override
  final File? image;

  @override
  String toString() {
    return 'AddDeleteEditPostEvent.editPostEvent(postId: $postId, content: $content, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_editPostEvent &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, postId, content, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_editPostEventCopyWith<_$_editPostEvent> get copyWith =>
      __$$_editPostEventCopyWithImpl<_$_editPostEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String userName, String userImage,
            String content, String date, File? image)
        addPostEvent,
    required TResult Function(String postId) deletePostEvent,
    required TResult Function(String postId, String content, File? image)
        editPostEvent,
    required TResult Function(ImageSource imageSource) pickImageEvent,
  }) {
    return editPostEvent(postId, content, image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String userName, String userImage,
            String content, String date, File? image)?
        addPostEvent,
    TResult? Function(String postId)? deletePostEvent,
    TResult? Function(String postId, String content, File? image)?
        editPostEvent,
    TResult? Function(ImageSource imageSource)? pickImageEvent,
  }) {
    return editPostEvent?.call(postId, content, image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String userName, String userImage,
            String content, String date, File? image)?
        addPostEvent,
    TResult Function(String postId)? deletePostEvent,
    TResult Function(String postId, String content, File? image)? editPostEvent,
    TResult Function(ImageSource imageSource)? pickImageEvent,
    required TResult orElse(),
  }) {
    if (editPostEvent != null) {
      return editPostEvent(postId, content, image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_addPostEvent value) addPostEvent,
    required TResult Function(_deletePostEvent value) deletePostEvent,
    required TResult Function(_editPostEvent value) editPostEvent,
    required TResult Function(_pickImageEvent value) pickImageEvent,
  }) {
    return editPostEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_addPostEvent value)? addPostEvent,
    TResult? Function(_deletePostEvent value)? deletePostEvent,
    TResult? Function(_editPostEvent value)? editPostEvent,
    TResult? Function(_pickImageEvent value)? pickImageEvent,
  }) {
    return editPostEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_addPostEvent value)? addPostEvent,
    TResult Function(_deletePostEvent value)? deletePostEvent,
    TResult Function(_editPostEvent value)? editPostEvent,
    TResult Function(_pickImageEvent value)? pickImageEvent,
    required TResult orElse(),
  }) {
    if (editPostEvent != null) {
      return editPostEvent(this);
    }
    return orElse();
  }
}

abstract class _editPostEvent implements AddDeleteEditPostEvent {
  const factory _editPostEvent(
          final String postId, final String content, final File? image) =
      _$_editPostEvent;

  String get postId;
  String get content;
  File? get image;
  @JsonKey(ignore: true)
  _$$_editPostEventCopyWith<_$_editPostEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_pickImageEventCopyWith<$Res> {
  factory _$$_pickImageEventCopyWith(
          _$_pickImageEvent value, $Res Function(_$_pickImageEvent) then) =
      __$$_pickImageEventCopyWithImpl<$Res>;
  @useResult
  $Res call({ImageSource imageSource});
}

/// @nodoc
class __$$_pickImageEventCopyWithImpl<$Res>
    extends _$AddDeleteEditPostEventCopyWithImpl<$Res, _$_pickImageEvent>
    implements _$$_pickImageEventCopyWith<$Res> {
  __$$_pickImageEventCopyWithImpl(
      _$_pickImageEvent _value, $Res Function(_$_pickImageEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageSource = null,
  }) {
    return _then(_$_pickImageEvent(
      null == imageSource
          ? _value.imageSource
          : imageSource // ignore: cast_nullable_to_non_nullable
              as ImageSource,
    ));
  }
}

/// @nodoc

class _$_pickImageEvent implements _pickImageEvent {
  const _$_pickImageEvent(this.imageSource);

  @override
  final ImageSource imageSource;

  @override
  String toString() {
    return 'AddDeleteEditPostEvent.pickImageEvent(imageSource: $imageSource)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_pickImageEvent &&
            (identical(other.imageSource, imageSource) ||
                other.imageSource == imageSource));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imageSource);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_pickImageEventCopyWith<_$_pickImageEvent> get copyWith =>
      __$$_pickImageEventCopyWithImpl<_$_pickImageEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String userName, String userImage,
            String content, String date, File? image)
        addPostEvent,
    required TResult Function(String postId) deletePostEvent,
    required TResult Function(String postId, String content, File? image)
        editPostEvent,
    required TResult Function(ImageSource imageSource) pickImageEvent,
  }) {
    return pickImageEvent(imageSource);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String userName, String userImage,
            String content, String date, File? image)?
        addPostEvent,
    TResult? Function(String postId)? deletePostEvent,
    TResult? Function(String postId, String content, File? image)?
        editPostEvent,
    TResult? Function(ImageSource imageSource)? pickImageEvent,
  }) {
    return pickImageEvent?.call(imageSource);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String userName, String userImage,
            String content, String date, File? image)?
        addPostEvent,
    TResult Function(String postId)? deletePostEvent,
    TResult Function(String postId, String content, File? image)? editPostEvent,
    TResult Function(ImageSource imageSource)? pickImageEvent,
    required TResult orElse(),
  }) {
    if (pickImageEvent != null) {
      return pickImageEvent(imageSource);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_addPostEvent value) addPostEvent,
    required TResult Function(_deletePostEvent value) deletePostEvent,
    required TResult Function(_editPostEvent value) editPostEvent,
    required TResult Function(_pickImageEvent value) pickImageEvent,
  }) {
    return pickImageEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_addPostEvent value)? addPostEvent,
    TResult? Function(_deletePostEvent value)? deletePostEvent,
    TResult? Function(_editPostEvent value)? editPostEvent,
    TResult? Function(_pickImageEvent value)? pickImageEvent,
  }) {
    return pickImageEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_addPostEvent value)? addPostEvent,
    TResult Function(_deletePostEvent value)? deletePostEvent,
    TResult Function(_editPostEvent value)? editPostEvent,
    TResult Function(_pickImageEvent value)? pickImageEvent,
    required TResult orElse(),
  }) {
    if (pickImageEvent != null) {
      return pickImageEvent(this);
    }
    return orElse();
  }
}

abstract class _pickImageEvent implements AddDeleteEditPostEvent {
  const factory _pickImageEvent(final ImageSource imageSource) =
      _$_pickImageEvent;

  ImageSource get imageSource;
  @JsonKey(ignore: true)
  _$$_pickImageEventCopyWith<_$_pickImageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddDeleteEditPostState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() addDeleteEditPostInitial,
    required TResult Function() lading,
    required TResult Function(String message) successAddDeleteEditPostState,
    required TResult Function(String message) errorAddDeleteEditPostState,
    required TResult Function(String message) errorPickImageState,
    required TResult Function(File image) successPickImageState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? addDeleteEditPostInitial,
    TResult? Function()? lading,
    TResult? Function(String message)? successAddDeleteEditPostState,
    TResult? Function(String message)? errorAddDeleteEditPostState,
    TResult? Function(String message)? errorPickImageState,
    TResult? Function(File image)? successPickImageState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addDeleteEditPostInitial,
    TResult Function()? lading,
    TResult Function(String message)? successAddDeleteEditPostState,
    TResult Function(String message)? errorAddDeleteEditPostState,
    TResult Function(String message)? errorPickImageState,
    TResult Function(File image)? successPickImageState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_addDeleteEditPostInitial value)
        addDeleteEditPostInitial,
    required TResult Function(_loading value) lading,
    required TResult Function(_successAddDeleteEditPostState value)
        successAddDeleteEditPostState,
    required TResult Function(_errorAddDeleteEditPostState value)
        errorAddDeleteEditPostState,
    required TResult Function(_errorPickImageState value) errorPickImageState,
    required TResult Function(_successPickImageState value)
        successPickImageState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_addDeleteEditPostInitial value)?
        addDeleteEditPostInitial,
    TResult? Function(_loading value)? lading,
    TResult? Function(_successAddDeleteEditPostState value)?
        successAddDeleteEditPostState,
    TResult? Function(_errorAddDeleteEditPostState value)?
        errorAddDeleteEditPostState,
    TResult? Function(_errorPickImageState value)? errorPickImageState,
    TResult? Function(_successPickImageState value)? successPickImageState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_addDeleteEditPostInitial value)? addDeleteEditPostInitial,
    TResult Function(_loading value)? lading,
    TResult Function(_successAddDeleteEditPostState value)?
        successAddDeleteEditPostState,
    TResult Function(_errorAddDeleteEditPostState value)?
        errorAddDeleteEditPostState,
    TResult Function(_errorPickImageState value)? errorPickImageState,
    TResult Function(_successPickImageState value)? successPickImageState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddDeleteEditPostStateCopyWith<$Res> {
  factory $AddDeleteEditPostStateCopyWith(AddDeleteEditPostState value,
          $Res Function(AddDeleteEditPostState) then) =
      _$AddDeleteEditPostStateCopyWithImpl<$Res, AddDeleteEditPostState>;
}

/// @nodoc
class _$AddDeleteEditPostStateCopyWithImpl<$Res,
        $Val extends AddDeleteEditPostState>
    implements $AddDeleteEditPostStateCopyWith<$Res> {
  _$AddDeleteEditPostStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_addDeleteEditPostInitialCopyWith<$Res> {
  factory _$$_addDeleteEditPostInitialCopyWith(
          _$_addDeleteEditPostInitial value,
          $Res Function(_$_addDeleteEditPostInitial) then) =
      __$$_addDeleteEditPostInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_addDeleteEditPostInitialCopyWithImpl<$Res>
    extends _$AddDeleteEditPostStateCopyWithImpl<$Res,
        _$_addDeleteEditPostInitial>
    implements _$$_addDeleteEditPostInitialCopyWith<$Res> {
  __$$_addDeleteEditPostInitialCopyWithImpl(_$_addDeleteEditPostInitial _value,
      $Res Function(_$_addDeleteEditPostInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_addDeleteEditPostInitial implements _addDeleteEditPostInitial {
  const _$_addDeleteEditPostInitial();

  @override
  String toString() {
    return 'AddDeleteEditPostState.addDeleteEditPostInitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_addDeleteEditPostInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() addDeleteEditPostInitial,
    required TResult Function() lading,
    required TResult Function(String message) successAddDeleteEditPostState,
    required TResult Function(String message) errorAddDeleteEditPostState,
    required TResult Function(String message) errorPickImageState,
    required TResult Function(File image) successPickImageState,
  }) {
    return addDeleteEditPostInitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? addDeleteEditPostInitial,
    TResult? Function()? lading,
    TResult? Function(String message)? successAddDeleteEditPostState,
    TResult? Function(String message)? errorAddDeleteEditPostState,
    TResult? Function(String message)? errorPickImageState,
    TResult? Function(File image)? successPickImageState,
  }) {
    return addDeleteEditPostInitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addDeleteEditPostInitial,
    TResult Function()? lading,
    TResult Function(String message)? successAddDeleteEditPostState,
    TResult Function(String message)? errorAddDeleteEditPostState,
    TResult Function(String message)? errorPickImageState,
    TResult Function(File image)? successPickImageState,
    required TResult orElse(),
  }) {
    if (addDeleteEditPostInitial != null) {
      return addDeleteEditPostInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_addDeleteEditPostInitial value)
        addDeleteEditPostInitial,
    required TResult Function(_loading value) lading,
    required TResult Function(_successAddDeleteEditPostState value)
        successAddDeleteEditPostState,
    required TResult Function(_errorAddDeleteEditPostState value)
        errorAddDeleteEditPostState,
    required TResult Function(_errorPickImageState value) errorPickImageState,
    required TResult Function(_successPickImageState value)
        successPickImageState,
  }) {
    return addDeleteEditPostInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_addDeleteEditPostInitial value)?
        addDeleteEditPostInitial,
    TResult? Function(_loading value)? lading,
    TResult? Function(_successAddDeleteEditPostState value)?
        successAddDeleteEditPostState,
    TResult? Function(_errorAddDeleteEditPostState value)?
        errorAddDeleteEditPostState,
    TResult? Function(_errorPickImageState value)? errorPickImageState,
    TResult? Function(_successPickImageState value)? successPickImageState,
  }) {
    return addDeleteEditPostInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_addDeleteEditPostInitial value)? addDeleteEditPostInitial,
    TResult Function(_loading value)? lading,
    TResult Function(_successAddDeleteEditPostState value)?
        successAddDeleteEditPostState,
    TResult Function(_errorAddDeleteEditPostState value)?
        errorAddDeleteEditPostState,
    TResult Function(_errorPickImageState value)? errorPickImageState,
    TResult Function(_successPickImageState value)? successPickImageState,
    required TResult orElse(),
  }) {
    if (addDeleteEditPostInitial != null) {
      return addDeleteEditPostInitial(this);
    }
    return orElse();
  }
}

abstract class _addDeleteEditPostInitial implements AddDeleteEditPostState {
  const factory _addDeleteEditPostInitial() = _$_addDeleteEditPostInitial;
}

/// @nodoc
abstract class _$$_loadingCopyWith<$Res> {
  factory _$$_loadingCopyWith(
          _$_loading value, $Res Function(_$_loading) then) =
      __$$_loadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_loadingCopyWithImpl<$Res>
    extends _$AddDeleteEditPostStateCopyWithImpl<$Res, _$_loading>
    implements _$$_loadingCopyWith<$Res> {
  __$$_loadingCopyWithImpl(_$_loading _value, $Res Function(_$_loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_loading implements _loading {
  const _$_loading();

  @override
  String toString() {
    return 'AddDeleteEditPostState.lading()';
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
    required TResult Function() addDeleteEditPostInitial,
    required TResult Function() lading,
    required TResult Function(String message) successAddDeleteEditPostState,
    required TResult Function(String message) errorAddDeleteEditPostState,
    required TResult Function(String message) errorPickImageState,
    required TResult Function(File image) successPickImageState,
  }) {
    return lading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? addDeleteEditPostInitial,
    TResult? Function()? lading,
    TResult? Function(String message)? successAddDeleteEditPostState,
    TResult? Function(String message)? errorAddDeleteEditPostState,
    TResult? Function(String message)? errorPickImageState,
    TResult? Function(File image)? successPickImageState,
  }) {
    return lading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addDeleteEditPostInitial,
    TResult Function()? lading,
    TResult Function(String message)? successAddDeleteEditPostState,
    TResult Function(String message)? errorAddDeleteEditPostState,
    TResult Function(String message)? errorPickImageState,
    TResult Function(File image)? successPickImageState,
    required TResult orElse(),
  }) {
    if (lading != null) {
      return lading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_addDeleteEditPostInitial value)
        addDeleteEditPostInitial,
    required TResult Function(_loading value) lading,
    required TResult Function(_successAddDeleteEditPostState value)
        successAddDeleteEditPostState,
    required TResult Function(_errorAddDeleteEditPostState value)
        errorAddDeleteEditPostState,
    required TResult Function(_errorPickImageState value) errorPickImageState,
    required TResult Function(_successPickImageState value)
        successPickImageState,
  }) {
    return lading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_addDeleteEditPostInitial value)?
        addDeleteEditPostInitial,
    TResult? Function(_loading value)? lading,
    TResult? Function(_successAddDeleteEditPostState value)?
        successAddDeleteEditPostState,
    TResult? Function(_errorAddDeleteEditPostState value)?
        errorAddDeleteEditPostState,
    TResult? Function(_errorPickImageState value)? errorPickImageState,
    TResult? Function(_successPickImageState value)? successPickImageState,
  }) {
    return lading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_addDeleteEditPostInitial value)? addDeleteEditPostInitial,
    TResult Function(_loading value)? lading,
    TResult Function(_successAddDeleteEditPostState value)?
        successAddDeleteEditPostState,
    TResult Function(_errorAddDeleteEditPostState value)?
        errorAddDeleteEditPostState,
    TResult Function(_errorPickImageState value)? errorPickImageState,
    TResult Function(_successPickImageState value)? successPickImageState,
    required TResult orElse(),
  }) {
    if (lading != null) {
      return lading(this);
    }
    return orElse();
  }
}

abstract class _loading implements AddDeleteEditPostState {
  const factory _loading() = _$_loading;
}

/// @nodoc
abstract class _$$_successAddDeleteEditPostStateCopyWith<$Res> {
  factory _$$_successAddDeleteEditPostStateCopyWith(
          _$_successAddDeleteEditPostState value,
          $Res Function(_$_successAddDeleteEditPostState) then) =
      __$$_successAddDeleteEditPostStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_successAddDeleteEditPostStateCopyWithImpl<$Res>
    extends _$AddDeleteEditPostStateCopyWithImpl<$Res,
        _$_successAddDeleteEditPostState>
    implements _$$_successAddDeleteEditPostStateCopyWith<$Res> {
  __$$_successAddDeleteEditPostStateCopyWithImpl(
      _$_successAddDeleteEditPostState _value,
      $Res Function(_$_successAddDeleteEditPostState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_successAddDeleteEditPostState(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_successAddDeleteEditPostState
    implements _successAddDeleteEditPostState {
  const _$_successAddDeleteEditPostState(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AddDeleteEditPostState.successAddDeleteEditPostState(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_successAddDeleteEditPostState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_successAddDeleteEditPostStateCopyWith<_$_successAddDeleteEditPostState>
      get copyWith => __$$_successAddDeleteEditPostStateCopyWithImpl<
          _$_successAddDeleteEditPostState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() addDeleteEditPostInitial,
    required TResult Function() lading,
    required TResult Function(String message) successAddDeleteEditPostState,
    required TResult Function(String message) errorAddDeleteEditPostState,
    required TResult Function(String message) errorPickImageState,
    required TResult Function(File image) successPickImageState,
  }) {
    return successAddDeleteEditPostState(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? addDeleteEditPostInitial,
    TResult? Function()? lading,
    TResult? Function(String message)? successAddDeleteEditPostState,
    TResult? Function(String message)? errorAddDeleteEditPostState,
    TResult? Function(String message)? errorPickImageState,
    TResult? Function(File image)? successPickImageState,
  }) {
    return successAddDeleteEditPostState?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addDeleteEditPostInitial,
    TResult Function()? lading,
    TResult Function(String message)? successAddDeleteEditPostState,
    TResult Function(String message)? errorAddDeleteEditPostState,
    TResult Function(String message)? errorPickImageState,
    TResult Function(File image)? successPickImageState,
    required TResult orElse(),
  }) {
    if (successAddDeleteEditPostState != null) {
      return successAddDeleteEditPostState(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_addDeleteEditPostInitial value)
        addDeleteEditPostInitial,
    required TResult Function(_loading value) lading,
    required TResult Function(_successAddDeleteEditPostState value)
        successAddDeleteEditPostState,
    required TResult Function(_errorAddDeleteEditPostState value)
        errorAddDeleteEditPostState,
    required TResult Function(_errorPickImageState value) errorPickImageState,
    required TResult Function(_successPickImageState value)
        successPickImageState,
  }) {
    return successAddDeleteEditPostState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_addDeleteEditPostInitial value)?
        addDeleteEditPostInitial,
    TResult? Function(_loading value)? lading,
    TResult? Function(_successAddDeleteEditPostState value)?
        successAddDeleteEditPostState,
    TResult? Function(_errorAddDeleteEditPostState value)?
        errorAddDeleteEditPostState,
    TResult? Function(_errorPickImageState value)? errorPickImageState,
    TResult? Function(_successPickImageState value)? successPickImageState,
  }) {
    return successAddDeleteEditPostState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_addDeleteEditPostInitial value)? addDeleteEditPostInitial,
    TResult Function(_loading value)? lading,
    TResult Function(_successAddDeleteEditPostState value)?
        successAddDeleteEditPostState,
    TResult Function(_errorAddDeleteEditPostState value)?
        errorAddDeleteEditPostState,
    TResult Function(_errorPickImageState value)? errorPickImageState,
    TResult Function(_successPickImageState value)? successPickImageState,
    required TResult orElse(),
  }) {
    if (successAddDeleteEditPostState != null) {
      return successAddDeleteEditPostState(this);
    }
    return orElse();
  }
}

abstract class _successAddDeleteEditPostState
    implements AddDeleteEditPostState {
  const factory _successAddDeleteEditPostState(final String message) =
      _$_successAddDeleteEditPostState;

  String get message;
  @JsonKey(ignore: true)
  _$$_successAddDeleteEditPostStateCopyWith<_$_successAddDeleteEditPostState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_errorAddDeleteEditPostStateCopyWith<$Res> {
  factory _$$_errorAddDeleteEditPostStateCopyWith(
          _$_errorAddDeleteEditPostState value,
          $Res Function(_$_errorAddDeleteEditPostState) then) =
      __$$_errorAddDeleteEditPostStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_errorAddDeleteEditPostStateCopyWithImpl<$Res>
    extends _$AddDeleteEditPostStateCopyWithImpl<$Res,
        _$_errorAddDeleteEditPostState>
    implements _$$_errorAddDeleteEditPostStateCopyWith<$Res> {
  __$$_errorAddDeleteEditPostStateCopyWithImpl(
      _$_errorAddDeleteEditPostState _value,
      $Res Function(_$_errorAddDeleteEditPostState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_errorAddDeleteEditPostState(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_errorAddDeleteEditPostState implements _errorAddDeleteEditPostState {
  const _$_errorAddDeleteEditPostState(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AddDeleteEditPostState.errorAddDeleteEditPostState(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_errorAddDeleteEditPostState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_errorAddDeleteEditPostStateCopyWith<_$_errorAddDeleteEditPostState>
      get copyWith => __$$_errorAddDeleteEditPostStateCopyWithImpl<
          _$_errorAddDeleteEditPostState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() addDeleteEditPostInitial,
    required TResult Function() lading,
    required TResult Function(String message) successAddDeleteEditPostState,
    required TResult Function(String message) errorAddDeleteEditPostState,
    required TResult Function(String message) errorPickImageState,
    required TResult Function(File image) successPickImageState,
  }) {
    return errorAddDeleteEditPostState(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? addDeleteEditPostInitial,
    TResult? Function()? lading,
    TResult? Function(String message)? successAddDeleteEditPostState,
    TResult? Function(String message)? errorAddDeleteEditPostState,
    TResult? Function(String message)? errorPickImageState,
    TResult? Function(File image)? successPickImageState,
  }) {
    return errorAddDeleteEditPostState?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addDeleteEditPostInitial,
    TResult Function()? lading,
    TResult Function(String message)? successAddDeleteEditPostState,
    TResult Function(String message)? errorAddDeleteEditPostState,
    TResult Function(String message)? errorPickImageState,
    TResult Function(File image)? successPickImageState,
    required TResult orElse(),
  }) {
    if (errorAddDeleteEditPostState != null) {
      return errorAddDeleteEditPostState(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_addDeleteEditPostInitial value)
        addDeleteEditPostInitial,
    required TResult Function(_loading value) lading,
    required TResult Function(_successAddDeleteEditPostState value)
        successAddDeleteEditPostState,
    required TResult Function(_errorAddDeleteEditPostState value)
        errorAddDeleteEditPostState,
    required TResult Function(_errorPickImageState value) errorPickImageState,
    required TResult Function(_successPickImageState value)
        successPickImageState,
  }) {
    return errorAddDeleteEditPostState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_addDeleteEditPostInitial value)?
        addDeleteEditPostInitial,
    TResult? Function(_loading value)? lading,
    TResult? Function(_successAddDeleteEditPostState value)?
        successAddDeleteEditPostState,
    TResult? Function(_errorAddDeleteEditPostState value)?
        errorAddDeleteEditPostState,
    TResult? Function(_errorPickImageState value)? errorPickImageState,
    TResult? Function(_successPickImageState value)? successPickImageState,
  }) {
    return errorAddDeleteEditPostState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_addDeleteEditPostInitial value)? addDeleteEditPostInitial,
    TResult Function(_loading value)? lading,
    TResult Function(_successAddDeleteEditPostState value)?
        successAddDeleteEditPostState,
    TResult Function(_errorAddDeleteEditPostState value)?
        errorAddDeleteEditPostState,
    TResult Function(_errorPickImageState value)? errorPickImageState,
    TResult Function(_successPickImageState value)? successPickImageState,
    required TResult orElse(),
  }) {
    if (errorAddDeleteEditPostState != null) {
      return errorAddDeleteEditPostState(this);
    }
    return orElse();
  }
}

abstract class _errorAddDeleteEditPostState implements AddDeleteEditPostState {
  const factory _errorAddDeleteEditPostState(final String message) =
      _$_errorAddDeleteEditPostState;

  String get message;
  @JsonKey(ignore: true)
  _$$_errorAddDeleteEditPostStateCopyWith<_$_errorAddDeleteEditPostState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_errorPickImageStateCopyWith<$Res> {
  factory _$$_errorPickImageStateCopyWith(_$_errorPickImageState value,
          $Res Function(_$_errorPickImageState) then) =
      __$$_errorPickImageStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_errorPickImageStateCopyWithImpl<$Res>
    extends _$AddDeleteEditPostStateCopyWithImpl<$Res, _$_errorPickImageState>
    implements _$$_errorPickImageStateCopyWith<$Res> {
  __$$_errorPickImageStateCopyWithImpl(_$_errorPickImageState _value,
      $Res Function(_$_errorPickImageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_errorPickImageState(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_errorPickImageState implements _errorPickImageState {
  const _$_errorPickImageState(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AddDeleteEditPostState.errorPickImageState(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_errorPickImageState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_errorPickImageStateCopyWith<_$_errorPickImageState> get copyWith =>
      __$$_errorPickImageStateCopyWithImpl<_$_errorPickImageState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() addDeleteEditPostInitial,
    required TResult Function() lading,
    required TResult Function(String message) successAddDeleteEditPostState,
    required TResult Function(String message) errorAddDeleteEditPostState,
    required TResult Function(String message) errorPickImageState,
    required TResult Function(File image) successPickImageState,
  }) {
    return errorPickImageState(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? addDeleteEditPostInitial,
    TResult? Function()? lading,
    TResult? Function(String message)? successAddDeleteEditPostState,
    TResult? Function(String message)? errorAddDeleteEditPostState,
    TResult? Function(String message)? errorPickImageState,
    TResult? Function(File image)? successPickImageState,
  }) {
    return errorPickImageState?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addDeleteEditPostInitial,
    TResult Function()? lading,
    TResult Function(String message)? successAddDeleteEditPostState,
    TResult Function(String message)? errorAddDeleteEditPostState,
    TResult Function(String message)? errorPickImageState,
    TResult Function(File image)? successPickImageState,
    required TResult orElse(),
  }) {
    if (errorPickImageState != null) {
      return errorPickImageState(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_addDeleteEditPostInitial value)
        addDeleteEditPostInitial,
    required TResult Function(_loading value) lading,
    required TResult Function(_successAddDeleteEditPostState value)
        successAddDeleteEditPostState,
    required TResult Function(_errorAddDeleteEditPostState value)
        errorAddDeleteEditPostState,
    required TResult Function(_errorPickImageState value) errorPickImageState,
    required TResult Function(_successPickImageState value)
        successPickImageState,
  }) {
    return errorPickImageState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_addDeleteEditPostInitial value)?
        addDeleteEditPostInitial,
    TResult? Function(_loading value)? lading,
    TResult? Function(_successAddDeleteEditPostState value)?
        successAddDeleteEditPostState,
    TResult? Function(_errorAddDeleteEditPostState value)?
        errorAddDeleteEditPostState,
    TResult? Function(_errorPickImageState value)? errorPickImageState,
    TResult? Function(_successPickImageState value)? successPickImageState,
  }) {
    return errorPickImageState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_addDeleteEditPostInitial value)? addDeleteEditPostInitial,
    TResult Function(_loading value)? lading,
    TResult Function(_successAddDeleteEditPostState value)?
        successAddDeleteEditPostState,
    TResult Function(_errorAddDeleteEditPostState value)?
        errorAddDeleteEditPostState,
    TResult Function(_errorPickImageState value)? errorPickImageState,
    TResult Function(_successPickImageState value)? successPickImageState,
    required TResult orElse(),
  }) {
    if (errorPickImageState != null) {
      return errorPickImageState(this);
    }
    return orElse();
  }
}

abstract class _errorPickImageState implements AddDeleteEditPostState {
  const factory _errorPickImageState(final String message) =
      _$_errorPickImageState;

  String get message;
  @JsonKey(ignore: true)
  _$$_errorPickImageStateCopyWith<_$_errorPickImageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_successPickImageStateCopyWith<$Res> {
  factory _$$_successPickImageStateCopyWith(_$_successPickImageState value,
          $Res Function(_$_successPickImageState) then) =
      __$$_successPickImageStateCopyWithImpl<$Res>;
  @useResult
  $Res call({File image});
}

/// @nodoc
class __$$_successPickImageStateCopyWithImpl<$Res>
    extends _$AddDeleteEditPostStateCopyWithImpl<$Res, _$_successPickImageState>
    implements _$$_successPickImageStateCopyWith<$Res> {
  __$$_successPickImageStateCopyWithImpl(_$_successPickImageState _value,
      $Res Function(_$_successPickImageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
  }) {
    return _then(_$_successPickImageState(
      null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$_successPickImageState implements _successPickImageState {
  const _$_successPickImageState(this.image);

  @override
  final File image;

  @override
  String toString() {
    return 'AddDeleteEditPostState.successPickImageState(image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_successPickImageState &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_successPickImageStateCopyWith<_$_successPickImageState> get copyWith =>
      __$$_successPickImageStateCopyWithImpl<_$_successPickImageState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() addDeleteEditPostInitial,
    required TResult Function() lading,
    required TResult Function(String message) successAddDeleteEditPostState,
    required TResult Function(String message) errorAddDeleteEditPostState,
    required TResult Function(String message) errorPickImageState,
    required TResult Function(File image) successPickImageState,
  }) {
    return successPickImageState(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? addDeleteEditPostInitial,
    TResult? Function()? lading,
    TResult? Function(String message)? successAddDeleteEditPostState,
    TResult? Function(String message)? errorAddDeleteEditPostState,
    TResult? Function(String message)? errorPickImageState,
    TResult? Function(File image)? successPickImageState,
  }) {
    return successPickImageState?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addDeleteEditPostInitial,
    TResult Function()? lading,
    TResult Function(String message)? successAddDeleteEditPostState,
    TResult Function(String message)? errorAddDeleteEditPostState,
    TResult Function(String message)? errorPickImageState,
    TResult Function(File image)? successPickImageState,
    required TResult orElse(),
  }) {
    if (successPickImageState != null) {
      return successPickImageState(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_addDeleteEditPostInitial value)
        addDeleteEditPostInitial,
    required TResult Function(_loading value) lading,
    required TResult Function(_successAddDeleteEditPostState value)
        successAddDeleteEditPostState,
    required TResult Function(_errorAddDeleteEditPostState value)
        errorAddDeleteEditPostState,
    required TResult Function(_errorPickImageState value) errorPickImageState,
    required TResult Function(_successPickImageState value)
        successPickImageState,
  }) {
    return successPickImageState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_addDeleteEditPostInitial value)?
        addDeleteEditPostInitial,
    TResult? Function(_loading value)? lading,
    TResult? Function(_successAddDeleteEditPostState value)?
        successAddDeleteEditPostState,
    TResult? Function(_errorAddDeleteEditPostState value)?
        errorAddDeleteEditPostState,
    TResult? Function(_errorPickImageState value)? errorPickImageState,
    TResult? Function(_successPickImageState value)? successPickImageState,
  }) {
    return successPickImageState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_addDeleteEditPostInitial value)? addDeleteEditPostInitial,
    TResult Function(_loading value)? lading,
    TResult Function(_successAddDeleteEditPostState value)?
        successAddDeleteEditPostState,
    TResult Function(_errorAddDeleteEditPostState value)?
        errorAddDeleteEditPostState,
    TResult Function(_errorPickImageState value)? errorPickImageState,
    TResult Function(_successPickImageState value)? successPickImageState,
    required TResult orElse(),
  }) {
    if (successPickImageState != null) {
      return successPickImageState(this);
    }
    return orElse();
  }
}

abstract class _successPickImageState implements AddDeleteEditPostState {
  const factory _successPickImageState(final File image) =
      _$_successPickImageState;

  File get image;
  @JsonKey(ignore: true)
  _$$_successPickImageStateCopyWith<_$_successPickImageState> get copyWith =>
      throw _privateConstructorUsedError;
}
