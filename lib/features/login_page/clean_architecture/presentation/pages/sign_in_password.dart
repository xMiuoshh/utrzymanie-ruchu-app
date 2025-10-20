import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:utrzymanie_ruchu_app/core/themes/margins.dart';
import 'package:utrzymanie_ruchu_app/core/themes/text_styles.dart';
import 'package:utrzymanie_ruchu_app/features/login_page/clean_architecture/presentation/widgets/auth_confirm_button.dart';
import 'package:utrzymanie_ruchu_app/features/login_page/clean_architecture/presentation/widgets/auth_input_text.dart';
import 'package:utrzymanie_ruchu_app/features/login_page/clean_architecture/presentation/widgets/login_with.dart';

class SignInPasswordScreen extends StatefulWidget{

  const SignInPasswordScreen({super.key,});

  @override
  State<SignInPasswordScreen> createState() => _SignInPasswordScreenState();
}





class _SignInPasswordScreenState extends State<SignInPasswordScreen> {

  final passwordController = TextEditingController();



  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Padding(
               padding: const EdgeInsets.fromLTRB(Margins.padding20, Margins.padding80, Margins.padding20, Margins.padding20),
               child: Text(
                style: AppTextStyle.h1Text,
                'SignIn'),
             ),
            Form(
             child: Padding(
               padding: const EdgeInsets.fromLTRB(Margins.padding20, 0, Margins.padding20, 0),
               child: Column(children: [
                     AuthInputText(text: 'Password', textController: passwordController,),
                     SizedBox( height: Margins.spaceBetweenTextFields),

               ],),
               
             ),
          
             ),
             Padding(
               padding: const EdgeInsets.fromLTRB(Margins.padding20, 0, Margins.padding20, 0),
               child: AuthConfirmButton(),
             ),

             Padding(
               padding: const EdgeInsets.fromLTRB(Margins.padding20, Margins.padding20, Margins.padding20, 0),
               child: RichText(text: TextSpan(
                children: [
               
                  TextSpan(
                    text: 'Forgot Password? ',
                    style: AppTextStyle.authTextSpan1
                  ),
                  TextSpan(
                    recognizer: TapGestureRecognizer()..onTap = () {
                      // TODO route do resetu hasla
                    },
                    text: 'Reset ',
                    style: AppTextStyle.authTextSpan2
                  ),
                  
                  
                  ] 
               )),
             ),



             
            
            
        ]),
      ),
    );
  }
}

