import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:social_app_tdd/core/strings/id_and_token.dart';
import 'package:social_app_tdd/core/theme.dart';
import 'package:social_app_tdd/features/auth/presentation/pages/login_page.dart';
import 'package:social_app_tdd/features/posts/presentation/pages/feed_page.dart';
import 'package:social_app_tdd/firebase_options.dart';
import 'package:social_app_tdd/injection_container.dart' as di;
import 'package:bloc/bloc.dart';
import 'package:social_app_tdd/temp.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  Bloc.observer = MyBlocObserver();
  final sharedPreferences = await SharedPreferences.getInstance();
  userId = sharedPreferences.getString('USER_ID');
  Widget widget;
  if (userId != null) {
    widget = const FeedPage();
  } else {
    widget = const LoginPage();
  }

  await di.init();
  runApp(MyApp(
    widget: widget,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.widget});
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      themeMode: ThemeMode.light,
      home: widget,
    );
  }
}
