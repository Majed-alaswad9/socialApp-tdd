import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app_tdd/core/util/snackbar_message.dart';
import 'package:social_app_tdd/core/widget/loading_widget.dart';
import 'package:social_app_tdd/features/auth/presentation/widget/login_form_widget.dart';
import 'package:social_app_tdd/features/posts/presentation/pages/feed_page.dart';
import 'package:social_app_tdd/injection_container.dart' as di;
import '../../../../core/theme.dart';
import '../bloc/auth/auth_bloc.dart';
import '../bloc/auth/auth_state.dart';

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
      title: const Text('PurpleBook'),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: BlocProvider(
        create: (_) => di.sl<AuthBloc>(),
        child: BlocConsumer<AuthBloc, AuthState>(
          listener: (context, state) {
            if (state is SuccessLoginState) {
              SnackBarMessage().snackBarMessageSuccess(context, state.message);
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const FeedPage()),
                  (route) => false);
            } else if (state is ErrorLoginState) {
              SnackBarMessage().snackBarMessageError(context, state.error);
            }
          },
          builder: (context, state) {
            {
              if (state is LoadingLoginState) {
                return const LoadingWidget();
              }
              return LoginFormWidget();
            }
          },
        ),
      ),
    );
  }
}
