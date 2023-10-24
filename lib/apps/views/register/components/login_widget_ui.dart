import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'my_textField.dart';

class MyWidget extends StatelessWidget {
  final bool obscureText;
  final double top;
  final String textt;
  final Color collor;
  MyWidget(
      {super.key,
      required this.textt,
      required this.top,
      required this.obscureText,
      required this.collor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(top: top), // Установите необходимый отступ сверху
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              SizedBox(
                width: 50,
              ),
              Text(textt,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: collor)),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.center, // Устанавливаем в центр
            child: MyTextfield(obscureText: obscureText),
          ),
        ],
      ),
    );
  }
}
