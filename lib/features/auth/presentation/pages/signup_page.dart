import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app_tdd/core/util/snackbar_message.dart';
import 'package:social_app_tdd/core/widget/loading_widget.dart';
import 'package:social_app_tdd/features/auth/presentation/bloc/auth/auth_event.dart';
import 'package:social_app_tdd/features/auth/presentation/pages/login_page.dart';
import 'package:social_app_tdd/features/auth/presentation/widget/login_form_widget.dart';
import 'package:social_app_tdd/features/auth/presentation/widget/signup_form_widget.dart';
import 'package:social_app_tdd/injection_container.dart' as di;
import '../../../../core/theme.dart';
import '../bloc/auth/auth_bloc.dart';
import '../bloc/auth/auth_state.dart';

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
      child: BlocProvider(
        create: ((_) => di.sl<AuthBloc>()),
        child: BlocConsumer<AuthBloc, AuthState>(
          listener: (context, state) {
            if (state is SuccessSignupState) {
              SnackBarMessage().snackBarMessageSuccess(context, state.message);
            } else if (state is ErrorSignupState) {
              SnackBarMessage().snackBarMessageError(context, state.error);
            }
            if (state is SuccessCreateUserState) {
              SnackBarMessage().snackBarMessageSuccess(context, state.message);
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (_) => const LoginPage()),
                  (route) => false);
            } else if (state is ErrorCreateUserState) {
              SnackBarMessage().snackBarMessageError(context, state.error);
            }
          },
          builder: (context, state) {
            {
              if (state is LoadingLoginState) {
                return const LoadingWidget();
              }
              return SignupFormWidget();
            }
          },
        ),
      ),
    );
  }
}
