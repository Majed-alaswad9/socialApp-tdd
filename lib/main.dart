import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:social_app_tdd/core/strings/id_and_token.dart';
import 'package:social_app_tdd/core/theme.dart';
import 'package:social_app_tdd/features/auth/presentation/pages/login_page.dart';
import 'package:social_app_tdd/features/auth/presentation/pages/signup_page.dart';
import 'package:social_app_tdd/features/posts/presentation/pages/add_post_page.dart';
import 'package:social_app_tdd/features/posts/presentation/pages/feed_page.dart';
import 'package:social_app_tdd/firebase_options.dart';
import 'package:bloc/bloc.dart';
import 'package:social_app_tdd/temp.dart';

import 'injection_container.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  Bloc.observer = MyBlocObserver();
  final sharedPreferences = await SharedPreferences.getInstance();
  userId = sharedPreferences.getString("UID");
  await configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/loginScreen': (context) => const LoginPage(),
        '/signupScreen': (context) => const SignupPage(),
        '/feedScreen': (context) => const FeedPage(),
        '/addPostScreen': (context) => const AddPostPage()
      },
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      themeMode: ThemeMode.light,
      home: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const FeedPage();
          } else {
            return const LoginPage();
          }
        },
      ),
    );
  }
}
