import 'package:alimpeople_web_punch/present/check_screen/check_screen.dart';
import 'package:alimpeople_web_punch/present/login_screen/first_screen.dart';
import 'package:alimpeople_web_punch/present/login_screen/login_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'data/repository/firebase_academy_repository_impl.dart';
import 'firebase_options.dart';


final GoRouter _router = GoRouter(
  initialLocation: '/',
  routes: [
    // 첫 번째 스크린
    GoRoute(
      path: '/',
      builder: (context, state) => FirstScreen(),
    ),
    // 두 번째 스크린
    GoRoute(
      path: '/second',
      builder: (context, state) => LoginScreen(),
    ),
  ],
);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // 안드로이드 제외 ios, web 실행 주소
  final db = FirebaseFirestore.instance..useFirestoreEmulator('localhost', 8080);
  // 안드로이드 에뮬레이터 실행 주소
  // final db = FirebaseFirestore.instance..useFirestoreEmulator('10.0.2.2', 8080);

  runApp(MyApp(db: db));
}

class MyApp extends StatelessWidget {
  final FirebaseFirestore db;

  const MyApp({
    super.key,
    required this.db,
  });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _router,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        // home: CheckScreen(
        //   academyRepository: FirebaseAcademyRepositoryImpl(
        //     uid: 'KSm9vmT57KNDRb0QFWlZ0W416qs1',
        //     firebaseFirestore: db,
        //   ),
        // ),
      );

  }
}
