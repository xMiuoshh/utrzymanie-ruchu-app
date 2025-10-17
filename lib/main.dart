import 'package:flutter/material.dart';
import 'package:utrzymanie_ruchu_app/core/themes/app_theme.dart';
import 'package:utrzymanie_ruchu_app/features/login_page/clean_architecture/presentation/pages/sign_in.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.theme
        
        
      ,
      home:  SignInScreen(),
    );
  }
}

