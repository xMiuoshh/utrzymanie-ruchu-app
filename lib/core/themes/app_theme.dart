

import 'package:flutter/material.dart';
import 'package:utrzymanie_ruchu_app/core/themes/colors.dart';
import 'package:utrzymanie_ruchu_app/core/themes/radius.dart';

class AppTheme {
  static final theme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: AppColors.bgDark1,
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: TextStyle(
        color: AppColors.white50
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.all(Radius.circular(4))
      ),
      filled: true,
      fillColor: AppColors.bgDark2,
      focusedBorder: AppRadius.loginInputFieldRadius,
    
    
    )
  );
}