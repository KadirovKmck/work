import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'second_register.dart';

class MainHomePage extends StatefulWidget {
  const MainHomePage({super.key});

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Image(
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
            image: AssetImage(
              'assets/images/zuckerberk.png',
            )),
        Padding(
          padding: const EdgeInsets.only(top: 515, left: 118),
          child: CupertinoButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => seconPage()));
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Добро',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'пожаловать',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
