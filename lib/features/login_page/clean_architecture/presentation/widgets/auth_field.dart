import 'package:flutter/material.dart';

class AuthField extends StatelessWidget {
  final TextEditingController textController;
  final String? text;
  const AuthField ({super.key, required this.text, required this.textController});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          TextFormField(
            controller: textController,
            validator: (value) {
              if (value!.isEmpty) {
                return '$text cannot be empty';
              }
              return null;
            },
            decoration: InputDecoration(hintText: text ?? ''),
          )

        ],
      ),
    );
  }
}