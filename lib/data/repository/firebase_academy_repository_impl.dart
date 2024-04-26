import 'package:cloud_firestore/cloud_firestore.dart';

import '../../domain/model/academy.dart';
import '../../domain/model/student.dart';
import '../../domain/repository/firebase_academy_repository.dart';

class FirebaseAcademyRepositoryImpl implements AcademyRepository {
  final String _uid;
  final FirebaseFirestore _firebaseFirestore;

  const FirebaseAcademyRepositoryImpl({
    required String uid,
    required FirebaseFirestore firebaseFirestore,
  })  : _uid = uid,
        _firebaseFirestore = firebaseFirestore;

  @override
  Stream<Academy> get academyStream => _firebaseFirestore
      .collection('Academies')
      .doc(_uid)
      .snapshots()
      .map((e) => Academy.fromJson(e.data()!));

  @override
  Future<Academy> getAcademy() async {
    final snapshot =
    await _firebaseFirestore.collection('Academies').doc(_uid).get();

    if (!snapshot.exists) {
      throw Exception('미등록 학원');
    }

    return Academy.fromJson(snapshot.data()!);
  }

  @override
  Future<List<Student>> getStudents() async {
    final snapshot = await _firebaseFirestore
        .collection('Academies')
        .doc(_uid)
        .collection('Students')
        .get();

    return snapshot.docs.map((e) => Student.fromJson(e.data())).toList();
  }
}
