import 'package:alimpeople_web_punch/present/login_screen/sing_up_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../data/repository/firebase_academy_repository_impl.dart';
import '../check_screen/check_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _idController = TextEditingController();

  final TextEditingController _pwController = TextEditingController();

  final FirebaseAuth _auth = FirebaseAuth.instance;

  bool _isPasswordVisible = false;

  Future<void> signInWithFirebase(BuildContext context) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: _idController.text,
        password: _pwController.text,
      );

      // 로그인에 성공하면 CheckScreen으로 이동
      GoRouter.of(context).go(
        '/check',
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
      throw e;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Email Login'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              width: 250,
              height: 50,
              child: TextField(
                controller: _idController,
                decoration: const InputDecoration(
                    labelText: '아이디',
                    labelStyle: TextStyle(fontSize: 10),
                    hintText: '아이디를 입력하세요'),
              ),
            ),
            SizedBox(
              width: 250,
              height: 50,
              child: TextField(
                controller: _pwController,
                obscureText: !_isPasswordVisible,
                decoration: InputDecoration(
                  labelText: '비밀번호',
                  labelStyle: TextStyle(fontSize: 10),
                  hintText: '비밀번호를 입력하세요',
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isPasswordVisible
                          ? Icons.visibility_off
                          : Icons.visibility,
                    ),
                    onPressed: () {
                      setState(() {
                        _isPasswordVisible = !_isPasswordVisible;
                      });
                    },
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () => signInWithFirebase(context),
                child: Text('로그인'),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                GoRouter.of(context).go(
                  '/signup',
                );
              },
              child: Text('회원 가입'),
            ),
          ],
        ),
      ),
    );
  }
}
