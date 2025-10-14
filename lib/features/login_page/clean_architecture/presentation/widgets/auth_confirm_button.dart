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
        backgroundColor: MaterialStateProperty.resolveWith<Color?>((states) {
          if (states.contains(MaterialState.pressed)) {
            return Colors.red;
          }else return Colors.blue;
        },
      
      
     ),
    )));
  }
}