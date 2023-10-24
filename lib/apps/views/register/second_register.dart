import 'package:flutter/material.dart';
import 'components/my_button.dart';
import 'login/login.dart';
import 'signIn/signIn.dart';

class seconPage extends StatelessWidget {
  const seconPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff000),
      body: Column(
        children: [
          Stack(children: [
            Image(
                fit: BoxFit.cover,
                height: 720,
                width: 1280,
                image: AssetImage('assets/images/ilon.png')),
            Padding(
              padding: const EdgeInsets.only(top: 600),
              child: Column(
                children: [
                  My_Button(
                      ontap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => login()));
                      },
                      containerColor: Color(
                        0xff5FA1EF,
                      ),
                      text: 'Войти в аккаунт',
                      color: Colors.white),
                  SizedBox(height: 28),
                  My_Button(
                      ontap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => register()));
                      },
                      containerColor: Colors.white,
                      text: 'Регистрация',
                      color: Color(0xffAFAFAF)),
                  SizedBox(height: 30),
                  My_Button(
                      containerColor: Colors.white,
                      text: 'Продолжить без входа',
                      color: Color(0xffAFAFAF))
                ],
              ),
            )
          ]),
        ],
      ),
    );
  }
}
