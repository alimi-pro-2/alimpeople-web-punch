import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:alimpeople_web_punch/present/check_screen/check_screen.dart';

class SignUpScreen extends StatelessWidget {
  final TextEditingController _idController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> signUpWithFirebase(BuildContext context) async {
    try {
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: _idController.text,
        password: _pwController.text,
      );
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('회원 가입이 완료되었습니다.')),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
      throw e;
    } catch (e) {
      print(e);
      throw e;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('회원 가입'),
      ),
      body: Column(
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
              decoration: const InputDecoration(
                  labelText: '비밀번호',
                  labelStyle: TextStyle(fontSize: 10),
                  hintText: '비밀번호를 입력하세요'),
            ),
          ),
          ElevatedButton(
            onPressed: () => signUpWithFirebase(context),
            child: Text('회원 가입'),
          ),
        ],
      ),
    );
  }
}