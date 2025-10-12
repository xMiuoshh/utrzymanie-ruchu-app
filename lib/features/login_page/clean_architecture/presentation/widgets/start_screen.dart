import 'package:flutter/material.dart';
import 'package:utrzymanie_ruchu_app/core/themes/margins.dart';
import 'package:utrzymanie_ruchu_app/core/themes/text_styles.dart';
import 'package:utrzymanie_ruchu_app/features/login_page/clean_architecture/presentation/widgets/auth_field.dart';

class SignInScreen extends StatefulWidget{

  const SignInScreen({super.key,});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final usernameController = TextEditingController();

  final passwordController = TextEditingController();

  final emailController = TextEditingController();

  @override
  void dispose() {
    passwordController.dispose();
    usernameController.dispose();
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
             Padding(
               padding: const EdgeInsets.only(top: Margins.padding80, bottom: Margins.padding20),
               child: Text(
                style: AppTextStyle.h1Text,
                'SignIn'),
             ),
            Form(
             child: Padding(
               padding: const EdgeInsets.all(Margins.padding20),
               child: Column(children: [
                     AuthField(text: 'Username', textController: usernameController,),
                     SizedBox( height: Margins.spaceBetweenTextFields),
                     AuthField(text: 'Password', textController: passwordController,),
                     SizedBox( height: Margins.spaceBetweenTextFields,),
                     AuthField(text: 'Email', textController: emailController,),
                     SizedBox( height: Margins.spaceBetweenTextFields, ),
               ],),
             )
               
                     
               
                  
              
                   
                
               
             ),
            
            
        ]),
      ),
    );
  }
}

