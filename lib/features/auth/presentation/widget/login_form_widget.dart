import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app_tdd/features/auth/presentation/pages/signup_page.dart';
import 'package:social_app_tdd/features/auth/presentation/widget/text_form.dart';

import '../../../../core/theme.dart';
import '../bloc/auth/auth_bloc.dart';
import '../bloc/auth/auth_event.dart';

// ignore: must_be_immutable
class LoginFormWidget extends StatelessWidget {
  LoginFormWidget({Key? key}) : super(key: key);
  var emailController = TextEditingController();
  var passController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Log In',
            style: TextStyle(
                fontSize: 40, fontWeight: FontWeight.bold, color: primaryColor),
          ),
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
              controller: passController,
              obscureText: true,
              validate: validatePassword,
              hintText: 'Password',
              icon: Icons.lock,
              textInputType: TextInputType.visiblePassword),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            color: primaryColor,
            child: TextButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  BlocProvider.of<AuthBloc>(context).add(
                      LoginEvent(emailController.text, passController.text));
                }
              },
              child: const Text(
                'LOGIN',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Don\'t have an account?',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const SignupPage()));
                },
                child: const Text(
                  'Register',
                  style: TextStyle(fontSize: 15),
                ),
              )
            ],
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
