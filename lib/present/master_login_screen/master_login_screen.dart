import 'package:alimpeople_web_punch/present/check_screen/check_screen.dart';
import 'package:flutter/material.dart';

class MasterLoginScreen extends StatelessWidget {
  final TextEditingController _idController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();

  MasterLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Master Login'),
      ),
      body: Row(
        children: [
          Center(
            child: TextField(
              controller: _idController,
              decoration:
                  const InputDecoration(labelText: '아이디', hintText: '아이디를 입력하세요'),
            ),
          ),
          Center(
            child: TextField(
              controller: _pwController,
              decoration:
                  const InputDecoration(labelText: '비밀번호', hintText: '비밀번호를 입력하세요'),
            ),
          ),
        ],
      ),
    );
  }
}
