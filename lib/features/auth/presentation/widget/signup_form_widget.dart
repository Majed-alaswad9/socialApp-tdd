import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:social_app_tdd/features/auth/presentation/widget/text_form.dart';

import '../../../../core/theme.dart';
import '../bloc/auth/auth_bloc.dart';
import '../bloc/auth/auth_event.dart';

// ignore: must_be_immutable
class SignupFormWidget extends StatelessWidget {
  SignupFormWidget({Key? key}) : super(key: key);
  var emailController = TextEditingController();
  var passWordController = TextEditingController();
  var nameController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Sign Up',
            style: TextStyle(
                fontSize: 40, fontWeight: FontWeight.bold, color: primaryColor),
          ),
          const SizedBox(
            height: 30,
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
          Expanded(
              child: MaterialButton(
            onPressed: () {
              BlocProvider.of<AuthBloc>(context)
                  .add(const PickProfileImageEvent(ImageSource.gallery));
            },
            color: primaryColor,
            child: const Text('Gallery', style: TextStyle(color: Colors.white)),
          )),
          Container(
            width: double.infinity,
            color: primaryColor,
            child: TextButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  BlocProvider.of<AuthBloc>(context).add(SignupEvent(
                      nameController.text,
                      emailController.text,
                      passWordController.text,
                      null
                  ));
                }
              },
              child: const Text(
                'SIGN UP',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

  String? validateEmail(String? value) {
    if (RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
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
