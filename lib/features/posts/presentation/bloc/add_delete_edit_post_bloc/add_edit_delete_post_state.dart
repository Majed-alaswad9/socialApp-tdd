import 'dart:io';


abstract class AddDeleteEditPostState {
  const AddDeleteEditPostState();
}

class AddDeleteEditPostInitial extends AddDeleteEditPostState {}

class LoadingAddDeleteEditPostState extends AddDeleteEditPostState {}

class SuccessAddDeleteEditPostState extends AddDeleteEditPostState {
  final String message;

  const SuccessAddDeleteEditPostState({required this.message});
}

class ErrorAddDeleteEditPostState extends AddDeleteEditPostState {
  final String message;

  const ErrorAddDeleteEditPostState({required this.message});
}

class SuccessPickImageState extends AddDeleteEditPostState {
  final File image;
  SuccessPickImageState(this.image);
}

class ErrorPickImageState extends AddDeleteEditPostState {
  const ErrorPickImageState();
}
