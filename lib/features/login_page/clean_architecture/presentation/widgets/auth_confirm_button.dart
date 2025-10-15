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
        
        color: AppColors.primary,
        borderRadius: BorderRadiusDirectional.all(Radius.circular(20))
        
      ),
      child: ElevatedButton(onPressed: () {
        
      },
      child:  Text(
        style: AppTextStyle.buttonText,
        'Continue'),
      style: ButtonStyle(
        
        backgroundColor: WidgetStateProperty.resolveWith<Color?>((states) {
          if (states.contains(WidgetState.pressed)) {
            return const Color.fromARGB(255, 79, 35, 202);
          }else {return AppColors.primary;
          }
        },
      
      
     ),
    )));
  }
}