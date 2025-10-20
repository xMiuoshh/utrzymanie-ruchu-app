import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:utrzymanie_ruchu_app/core/themes/margins.dart';
import 'package:utrzymanie_ruchu_app/core/themes/text_styles.dart';
import 'package:utrzymanie_ruchu_app/features/login_page/clean_architecture/presentation/widgets/auth_confirm_button.dart';
import 'package:utrzymanie_ruchu_app/features/login_page/clean_architecture/presentation/widgets/auth_input_text.dart';
import 'package:utrzymanie_ruchu_app/features/login_page/clean_architecture/presentation/widgets/login_with.dart';

class SignInEmailScreen extends StatefulWidget{

  const SignInEmailScreen({super.key,});

  @override
  State<SignInEmailScreen> createState() => _SignInEmailScreenState();
}





class _SignInEmailScreenState extends State<SignInEmailScreen> {
  final emailController = TextEditingController();


  @override
  void dispose() {

    emailController.dispose();
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

                     SizedBox( height: Margins.spaceBetweenTextFields15,),
                     AuthInputText(text: 'Email', textController: emailController,),
                    SizedBox( height: Margins.spaceBetweenTextFields15,),

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
             SizedBox(height: Margins.padding15,),
             LoginWithButton(icon: Icon(Icons.facebook), text: 'Continue with Facebook',),
             SizedBox(height: Margins.padding15,),
             LoginWithButton(icon: Icon(Icons.apple), text: 'Continue with Apple',),
             SizedBox(height: Margins.padding15,),
             LoginWithButton(icon: Icon(Icons.login), text: 'Continue with Google',)


             
            
            
        ]),
      ),
    );
  }
}

