import 'dart:async';

import 'package:alimpeople_web_punch/domain/repository/firebase_academy_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../domain/model/academy.dart';
import '../../domain/model/student.dart';

class CheckViewModel with ChangeNotifier {
  final AcademyRepository _repository;

  CheckViewModel({required AcademyRepository repository})
      : _repository = repository;

  Future<List<String>> getCheckStudent(String pin) async {
    try {
      final List<Student> students = await _repository.getStudents();
      List<String> studentNames = [];
      // 학생 목록을 순회하며 학생의 PIN 번호를 비교하여 이름을 가져옴
      students.forEach((student) {
        if (student.PIN == pin) {
          studentNames.add(student.name);
        }
      });
      // 학생 이름 목록을 출력 또는 사용
      print('해당 학생의 이름 목록: $studentNames');
      notifyListeners(); // 필요에 따라 상태를 변경하여 UI 업데이트
      return studentNames;
    } catch (e) {
      // 오류 처리
      print('학생 목록을 가져오는 중 오류 발생: $e');
      rethrow; // 예외를 다시 throw하여 상위 레벨에서 처리할 수 있도록 함
    }
  }

  Future<List<String>> PushToParentsNumbers(String pin) async {
    try {
      final List<Student> students = await _repository.getStudents();
      List<String> parentsNumber = [];
      students.forEach((student) {
        if (student.PIN == pin) {
          parentsNumber.add(student.parentsPhone1);
        }
      });
      print('해당 학생 부모의 전화 목록: $parentsNumber');
      notifyListeners();
      return parentsNumber;
    } catch (e) {
      // 오류 처리
      print('학생 목록을 가져오는 중 오류 발생: $e');
      rethrow; // 예외를 다시 throw하여 상위 레벨에서 처리할 수 있도록 함
    }
  }
}
