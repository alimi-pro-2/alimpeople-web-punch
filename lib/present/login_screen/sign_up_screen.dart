import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _idController = TextEditingController();

  final TextEditingController _pwController = TextEditingController();

  final FirebaseAuth _auth = FirebaseAuth.instance;

  bool _isPasswordVisible = false;

  Future<void> signUpWithFirebase(BuildContext context) async {
    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: _idController.text,
        password: _pwController.text,
      );
      await userCredential.user!.sendEmailVerification();

      // 회원 가입 완료 메시지 출력
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('이메일 확인 후 로그인하세요.'),
        ),
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
                  labelStyle: const TextStyle(fontSize: 10),
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
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () => signUpWithFirebase(context),
                    child: const Text('회원 가입'),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    GoRouter.of(context).go(
                      '/login',
                    );
                  },
                  child: const Text('확인'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
