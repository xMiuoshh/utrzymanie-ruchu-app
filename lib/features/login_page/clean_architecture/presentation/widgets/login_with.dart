import 'package:flutter/material.dart';
import 'package:utrzymanie_ruchu_app/core/themes/colors.dart';
import 'package:utrzymanie_ruchu_app/core/themes/margins.dart';
import 'package:utrzymanie_ruchu_app/core/themes/text_styles.dart';

class LoginWithButton extends StatelessWidget{

  const LoginWithButton({super.key});

  @override
  Widget build (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(Margins.padding20, 0 , Margins.padding20, 0),
          child: Container(
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
            }else 
            {return AppColors.primary;
            }
          },
                
                
               ),
              ),child: Row(
                
                mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.facebook),
            Text(
              style: AppTextStyle.buttonText,
              'Continue'),
          ],
                ),
              )
              ),
        )
    ;
  }
}