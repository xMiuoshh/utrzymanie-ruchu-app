import 'package:flutter/material.dart';
import 'package:utrzymanie_ruchu_app/core/themes/colors.dart';
import 'package:utrzymanie_ruchu_app/core/themes/margins.dart';
import 'package:utrzymanie_ruchu_app/core/themes/text_styles.dart';

class LoginWithButton extends StatelessWidget{
  final Icon icon;
  final String text;

  const LoginWithButton({super.key, required this.icon, required this.text});

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
              ),child: Stack(
                alignment: Alignment.center,
                children: [

            Align( // Wyrownywanie
              alignment: Alignment.centerLeft,
              child: icon
              ),

            Text(
              style: AppTextStyle.buttonText,
              text),

        
          ],
              )
              )
              ),
        )
    ;
  }
}