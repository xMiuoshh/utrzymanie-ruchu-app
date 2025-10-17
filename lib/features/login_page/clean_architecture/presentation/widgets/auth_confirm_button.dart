import 'package:flutter/material.dart';
import 'package:utrzymanie_ruchu_app/core/themes/colors.dart';
import 'package:utrzymanie_ruchu_app/core/themes/text_styles.dart';

class AuthConfirmButton extends StatelessWidget{
  const AuthConfirmButton({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      decoration: BoxDecoration(
        
  
      ),
      child: ElevatedButton(onPressed: () {
        
      },
      
      style: ButtonStyle(
        
        backgroundColor: WidgetStateProperty.resolveWith<Color?>((states) {
          if (states.contains(WidgetState.pressed)) {
            return AppColors.buttonIsPressed;
          }else {return AppColors.primary;
          }
        },
  
    )
      
     ),
     child: Text(
        style: AppTextStyle.buttonText,
        'Continue'),
    )
    );
  }
}