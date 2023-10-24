import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:work_r/apps/views/register/components/login_widget_ui.dart';

import 'next_page.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xf0000),
      body: Container(
        decoration: BoxDecoration(
            color: Color(0xf0000),
            borderRadius: BorderRadius.all(Radius.circular(30))),
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              MyWidget(
                  collor: Colors.white,
                  textt: 'Имя',
                  top: 250,
                  obscureText: false),
              MyWidget(
                  collor: Colors.white,
                  textt: 'Фамилия/отечество',
                  top: 10,
                  obscureText: false),
              MyWidget(
                  collor: Colors.white,
                  textt: 'Год рождени',
                  top: 10,
                  obscureText: false),
              MyWidget(
                  collor: Colors.white,
                  textt: 'Номер телефона',
                  top: 10,
                  obscureText: false),
              MyWidget(
                  collor: Colors.white,
                  textt: 'email',
                  top: 10,
                  obscureText: false),
              SizedBox(
                height: 18,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 125),
                child: CupertinoButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (contex) => NextPage()));
                  },
                  child: Container(
                    width: 219,
                    height: 46,
                    padding: EdgeInsets.symmetric(
                      horizontal: 50,
                    ),
                    decoration: BoxDecoration(
                        color: Color(0xff64A1D8),
                        borderRadius: BorderRadius.circular(22)),
                    child: Center(
                      child: Text(
                        'Отправить',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
