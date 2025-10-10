import 'package:flutter/material.dart';
import 'package:utrzymanie_ruchu_app/core/utils/margins.dart';
import 'package:utrzymanie_ruchu_app/features/login_page/clean_architecture/presentation/widgets/auth_field.dart';

class StartScreen extends StatefulWidget{
  StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
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
        child: Center(
          child: Column(
            children: [
               Padding(
                 padding: const EdgeInsets.only(top: Margins.padding50, bottom: Margins.padding50),
                 child: Text(" chuj"),
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
      ),
    );
  }
}

