import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/login_widget_ui.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff000),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              const Image(
                  fit: BoxFit.cover,
                  height: 678,
                  width: 445,
                  image: AssetImage('assets/images/bill.png')),
              MyWidget(
                collor: Colors.black,
                obscureText: false,
                top: 310,
                textt: 'Login',
              ),
              SizedBox(
                height: 60,
              ),
              MyWidget(
                  collor: Colors.black,
                  obscureText: true,
                  top: 410,
                  textt: 'password'),
              Padding(
                padding: const EdgeInsets.only(left: 78, top: 518),
                child: Row(
                  children: [
                    Text(
                      'Забыл пароль',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 55,
                    ),
                    CupertinoButton(
                      onPressed: () {},
                      child: Container(
                        width: 151,
                        height: 48,
                        padding: EdgeInsets.symmetric(
                          horizontal: 50,
                        ),
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white,
                                offset: Offset(0, 2),
                                blurRadius: 8,
                              )
                            ],
                            color: Color(0xff64A1D8),
                            borderRadius: BorderRadius.circular(22)),
                        child: Center(
                          child: Text(
                            'Далее',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
