import 'dart:io';

import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:social_app_tdd/core/util/show_bottom_sheet.dart';
import 'package:social_app_tdd/core/util/snackbar_message.dart';
import 'package:social_app_tdd/core/widget/pick_image_widget.dart';
import 'package:social_app_tdd/features/auth/presentation/widget/text_form.dart';
import 'package:social_app_tdd/injection_container.dart' as di;
import '../../../../core/theme.dart';
import '../bloc/bloc/auth_bloc.dart';

// ignore: must_be_immutable
class SignupFormWidget extends StatelessWidget {
  SignupFormWidget({Key? key}) : super(key: key);
  var emailController = TextEditingController();
  var passWordController = TextEditingController();
  var nameController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  File? userImage;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: ((_) => di.getIt<AuthBloc>()),
      child: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          state.maybeWhen(
            orElse: () {},
            loading: () {
              isLoading = true;
            },
            successSignupState: (message) {
              SnackBarMessage().snackBarMessageSuccess(context, message);
              Navigator.pushNamedAndRemoveUntil(
                  context, '/feedScreen', (route) => false);
            },
            errorSignupState: (message) {
              isLoading = false;
              SnackBarMessage().snackBarMessageError(context, message);
            },
            successPickProfileImageState: (image) {
              userImage = image;
            },
            errorPickProfileImageState: (message) {
              SnackBarMessage().snackBarMessageError(context, message);
            },
          );
        },
        builder: (context, state) => state.maybeWhen(
          orElse: () {
            return _buildSignupBody(context);
          },
          authInitial: () => _buildSignupBody(context),
          errorSignupState: (_) => _buildSignupBody(context),
        ),
      ),
    );
  }

  Widget _buildSignupBody(BuildContext context) => SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sign Up',
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: primaryColor),
              ),
              const SizedBox(
                height: 30,
              ),
              Stack(alignment: Alignment.bottomRight, children: [
                CircleAvatar(
                  radius: 100,
                  backgroundImage: userImage != null
                      ? Image(image: FileImage(userImage!)).image
                      : const AssetImage('assets/image/user.jpg'),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(30))),
                  child: IconButton(
                    color: Colors.white,
                    onPressed: () {
                      ShowModalBottomSheet().showBottomSheet(
                          context, _buildPickProfileImage(context));
                    },
                    icon: const Icon(Icons.add_a_photo),
                  ),
                )
              ]),
              const SizedBox(
                height: 10,
              ),
              TextFormFileWidget(
                  controller: nameController,
                  validate: validateName,
                  hintText: 'Your Name',
                  icon: Icons.person,
                  textInputType: TextInputType.name),
              const SizedBox(
                height: 30,
              ),
              TextFormFileWidget(
                  controller: emailController,
                  validate: validateEmail,
                  hintText: 'Email',
                  icon: Icons.email,
                  textInputType: TextInputType.emailAddress),
              const SizedBox(height: 20),
              TextFormFileWidget(
                  controller: passWordController,
                  obscureText: true,
                  validate: validatePassword,
                  hintText: 'Password',
                  icon: Icons.lock,
                  textInputType: TextInputType.visiblePassword),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                child: ConditionalBuilder(
                  condition: !isLoading,
                  builder: (_) => ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primaryColor,
                        side: BorderSide(color: primaryColor),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                      ),
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          BlocProvider.of<AuthBloc>(context).add(
                              AuthEvent.signupEvent(
                                  nameController.text,
                                  emailController.text,
                                  passWordController.text,
                                  userImage));
                        }
                      },
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      )),
                  fallback: (_) => Center(
                    child: CircularProgressIndicator(
                        backgroundColor: primaryColor),
                  ),
                ),
              ),
            ],
          ),
        ),
      );

  Widget _buildPickProfileImage(context) {
    return PickImageWidget(onPressed: () {
      BlocProvider.of<AuthBloc>(context)
          .add(const AuthEvent.pickProfileImage(ImageSource.camera));
    }, onPressed2: () {
      BlocProvider.of<AuthBloc>(context)
          .add(const AuthEvent.pickProfileImage(ImageSource.gallery));
    });
  }

  String? validateEmail(String? value) {
    if (RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(value!)) {
      return null;
    }
    return "check your email, must be like \"a+@b+.c+\"";
  }

  String? validateName(String? value) {
    if (value!.isNotEmpty) {
      return null;
    }
    return "name must be not empty";
  }

  String? validatePassword(String? value) {
    if (value!.isNotEmpty) {
      if (value.length < 8) {
        return 'Password must be between 8 and 32 characters';
      }
      return null;
    }
    return "password must be not empty";
  }
}
