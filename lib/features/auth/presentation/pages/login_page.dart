import 'package:flutter/material.dart';
import 'package:social_app_tdd/features/auth/presentation/widget/login_form_widget.dart';
import '../../../../core/theme.dart';

// ignore: must_be_immutable
class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
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
      title: const Text(
        'Social App',
      ),
    );
  }

  Widget _buildBody() {
    return LoginFormWidget();
  }
}
