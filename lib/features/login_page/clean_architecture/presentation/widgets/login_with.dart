import 'package:flutter/material.dart';
import 'package:utrzymanie_ruchu_app/core/themes/colors.dart';
import 'package:utrzymanie_ruchu_app/core/themes/margins.dart';
import 'package:utrzymanie_ruchu_app/core/themes/text_styles.dart';

class LoginWithButton extends StatelessWidget{
  final Icon icon;
  final String text;
  final WidgetStateProperty<Color> widgetColorProperty;

  const LoginWithButton({super.key, required this.icon, required this.text, required this.widgetColorProperty});

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
          
          backgroundColor: widgetColorProperty,
                
                
               
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