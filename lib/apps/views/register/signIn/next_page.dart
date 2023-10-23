import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0009),
      body: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
        height: 932,
        width: 430,
        child: Stack(children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, right: 30),
            child: Align(
                alignment: Alignment.topRight,
                child: Image(image: AssetImage('assets/images/arrow.png'))),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: AssetImage('assets/images/q.png')),
                SizedBox(
                  height: 10,
                  width: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(60),
                  child: Text(
                    "Спасибо за выбор нашего приложения! В ближайшее время вы получите SMS с вашим логином. Если сообщение не поступит в течение нескольких минут, мы также отправим логин через WhatsApp и Telegram. Спасибо за терпение!",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
