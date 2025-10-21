import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:utrzymanie_ruchu_app/core/themes/colors.dart';

class AppStateProperty {

  static final continueButton = WidgetStateProperty.resolveWith<Color?>((state) {
            if (state.contains(WidgetState.pressed)) {
              return AppColors.buttonIsPressed;
            }else  
            {return AppColors.primary;
            }
          });

  static final loginWithButton = WidgetStateColor.resolveWith((state) {
            if (state.contains(WidgetState.pressed)) {
              return AppColors.buttonIsPressed;
            }else {
              return AppColors.buttonLoginWith;
            }
            
            
            });}