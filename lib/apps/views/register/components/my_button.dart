import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class My_Button extends StatelessWidget {
  final Function()? ontap;
  final String text;
  final Color color;
  final Color containerColor;
  const My_Button(
      {super.key,
      this.ontap,
      required this.text,
      required this.color,
      required this.containerColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: double.infinity,
        height: 50,
        margin: const EdgeInsets.symmetric(horizontal: 50),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.white,
              offset: Offset(0, 2),
              blurRadius: 8,
            )
          ],
          color: containerColor,
          borderRadius: BorderRadius.circular(35),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: color),
          ),
        ),
      ),
    );
  }
}
