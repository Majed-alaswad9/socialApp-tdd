import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:social_app_tdd/core/theme.dart';
import 'package:social_app_tdd/features/auth/presentation/pages/login_page.dart';
import 'package:social_app_tdd/firebase_options.dart';
import 'package:social_app_tdd/injection_container.dart' as di;
import 'package:bloc/bloc.dart';
import 'package:social_app_tdd/temp.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  Bloc.observer = MyBlocObserver();
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      themeMode: ThemeMode.light,
      home: LoginPage(),
    );
  }
}
