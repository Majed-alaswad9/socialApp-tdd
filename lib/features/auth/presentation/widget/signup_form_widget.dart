import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:social_app_tdd/core/util/show_bottom_sheet.dart';
import 'package:social_app_tdd/core/widget/elevated_button_widget.dart';
import 'package:social_app_tdd/core/widget/loading_widget.dart';
import 'package:social_app_tdd/features/auth/presentation/widget/text_form.dart';
import 'package:social_app_tdd/features/posts/presentation/pages/feed_page.dart';
import 'package:social_app_tdd/injection_container.dart' as di;
import '../../../../core/theme.dart';
import '../../../../core/util/snackbar_message.dart';
import '../bloc/auth/auth_bloc.dart';
import '../bloc/auth/auth_event.dart';
import '../bloc/auth/auth_state.dart';

// ignore: must_be_immutable
class SignupFormWidget extends StatelessWidget {
  SignupFormWidget({Key? key}) : super(key: key);
  var emailController = TextEditingController();
  var passWordController = TextEditingController();
  var nameController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  File? userImage;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: ((_) => di.sl<AuthBloc>()),
      child: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is SuccessSignupState) {
            SnackBarMessage().snackBarMessageSuccess(context, state.message);
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (_) => const FeedPage()),
                (route) => false);
          } else if (state is ErrorSignupState) {
            SnackBarMessage().snackBarMessageError(context, state.error);
          }
          if (state is SuccessPickImageState) {
            userImage = state.image;
            Navigator.pop(context);
            print(userImage!.path.toString());
          }else if(state is ErrorPickImageState){
            SnackBarMessage().snackBarMessageError(context, state.error);
          }
        },
        builder: (context, state) {
          {
            if (state is LoadingLoginState) {
              return const LoadingWidget();
            }
            return SingleChildScrollView(
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
                        backgroundImage: state is SuccessPickImageState
                            ? Image(image: FileImage(state.image)).image
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
                      child: ElevatedButton(
                        style: ButtonStyle(backgroundColor: MaterialStateColor.resolveWith((states) {
                          if (states.isEmpty) return primaryColor;
                          return secondaryColor;
                        })),
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              BlocProvider.of<AuthBloc>(context).add(SignupEvent(
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
                    ),
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }

  Widget _buildPickProfileImage(context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ElevatedButtonWidget(
              isLike: true,
              onPress: () {
                BlocProvider.of<AuthBloc>(context)
                    .add(const PickProfileImageEvent(ImageSource.camera));

              },
              txt: 'Camera',
              icon: Icons.add_a_photo),
          const SizedBox(
            height: 10,
          ),
          ElevatedButtonWidget(
              isLike: true,
              onPress: () {
                BlocProvider.of<AuthBloc>(context)
                    .add(const PickProfileImageEvent(ImageSource.gallery));
                print('yes');
              },
              txt: 'Gallery',
              icon: Icons.image),
        ],
      ),
    );
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
