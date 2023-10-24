import 'package:flutter/material.dart';

class TenderView extends StatelessWidget {
  const TenderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final text = MediaQuery.of(context).size.height * 2;
    return Scaffold(
      backgroundColor: Color(0xff464646),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'ТЕНДЕР',
            style: TextStyle(
                fontSize: 30,
                fontFamily: 'Quicksand',
                color: Colors.white,
                fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 160,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 53,
              width: 401,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: Colors.white,
              ),
              child: const Center(
                child: Text(
                  'У меня есть доступ',
                  style: TextStyle(
                      color: Color(0xff979797),
                      fontSize: 18,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 53,
              width: 401,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: Colors.white,
              ),
              child: const Center(
                child: Text(
                  'Получить доступ',
                  style: TextStyle(
                      color: Color(0xff979797),
                      fontSize: 18,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 178,
          ),
        ],
      ),
    );
  }
}
