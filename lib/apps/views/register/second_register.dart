import 'package:flutter/material.dart';
import 'package:work_r/apps/views/navBar%20view/navbar_view.dart';
import 'components/my_button.dart';
import 'login/login.dart';
import 'signIn/signIn.dart';

class SeconPage extends StatelessWidget {
  const SeconPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff000),
      body: Column(
        children: [
          Stack(children: [
            const Image(
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
                            MaterialPageRoute(builder: (context) => Login()));
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
                                builder: (context) => Register()));
                      },
                      containerColor: Colors.white,
                      text: 'Регистрация',
                      color: Color(0xffAFAFAF)),
                  SizedBox(height: 30),
                  My_Button(
                    containerColor: Colors.white,
                    text: 'Продолжить без входа',
                    color: Color(0xffAFAFAF),
                    ontap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => NavbarPage()),
                      );
                    },
                  )
                ],
              ),
            )
          ]),
        ],
      ),
    );
  }
}
