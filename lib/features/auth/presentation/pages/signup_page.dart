import 'package:flutter/material.dart';
import 'package:social_app_tdd/features/auth/presentation/widget/signup_form_widget.dart';

import '../../../../core/theme.dart';


class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: primaryColor,
      title: const Text('Social App'),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SignupFormWidget(),
    );
  }
}
