import 'package:flutter/material.dart';
import 'package:project01/shared/theme.dart';

class SignInPage extends StatelessWidget{
  const SignInPage({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 120, left: 24, right: 24),
          child: Center(
            child: Column(
              children: [
                Text(
                    'Welcome back',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 20,),
                Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        fillColor: Color(0xffF1F0F5),
                        filled: false,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(),
                        ),
                        labelText: 'nama *',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}