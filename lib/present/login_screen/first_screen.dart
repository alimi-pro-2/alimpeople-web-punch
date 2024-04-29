import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('출결 체크기'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 150,
          ),
          Center(
            child: Container(
              // height: 100,
              // width: 300,
              child: Text(
                'ALIMIPRO',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Text(
            '학원, 유치원, 공부방 등하원 알림 서비스',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 200,
          ),
          Container(
            width: 150,
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(width: 1),
            ),
            child: TextButton(
              onPressed: () {
                GoRouter.of(context).go('/check');
              },
              child: Text('출결체크기 로그인'),
            ),
          ),
          SizedBox(
            height: 200,
          ),
          Text(
            '출결 체크기',
            style: TextStyle(color: Colors.grey),
          )
        ],
      ),
    );
  }
}
