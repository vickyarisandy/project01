import 'package:flutter/material.dart';
import 'package:project01/shared/theme.dart';
import 'package:project01/ui/widgets/buttons.dart';

class PinPage extends StatelessWidget{
  const PinPage({Key? key}): super(key:key);

  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 58,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Enter Pin',
                  style: whiteTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: semiBold,
                  ),
              ),
              const SizedBox(
                width: 72,
              ),
              SizedBox(
                width: 200,
                child: TextFormField(
                  obscureText: true,
                  cursorColor: greyColor,
                    obscuringCharacter: '*',
                  style: whiteTextStyle.copyWith(
                    fontSize: 36,
                    fontWeight: medium,
                    letterSpacing: 16,
                  ),
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: greyColor,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: greyColor,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 66,
              ),
              Wrap(
                spacing: 40,
                runSpacing: 40,
                children: [
                  CustomInputButton(
                      title: '1',
                      onTap: (){},
                  ),
                  CustomInputButton(
                    title: '2',
                    onTap: (){},
                  ),
                  CustomInputButton(
                    title: '3',
                    onTap: (){},
                  ),
                  CustomInputButton(
                    title: '4',
                    onTap: (){},
                  ),
                  CustomInputButton(
                    title: '5',
                    onTap: (){},
                  ),
                  CustomInputButton(
                    title: '6',
                    onTap: (){},
                  ),
                  CustomInputButton(
                    title: '7',
                    onTap: (){},
                  ),
                  CustomInputButton(
                    title: '8',
                    onTap: (){},
                  ),
                  CustomInputButton(
                    title: '9',
                    onTap: (){},
                  ),
                  const SizedBox(
                    width: 60,
                    height: 60,
                  ),
                  CustomInputButton(
                    title: '0',
                    onTap: (){},
                  ),
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      width: 60,
                      height: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: numberBackgroundColor,
                    ),
                    child: Center(
                      child: Icon(
                          Icons.arrow_back,
                          color: whiteColor,
                      ),
                    ),
                  ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

}