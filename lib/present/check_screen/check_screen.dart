import 'dart:async';

import 'package:alimpeople_web_punch/data/repository/firebase_academy_repository_impl.dart';
import 'package:alimpeople_web_punch/domain/repository/firebase_academy_repository.dart';
import 'package:alimpeople_web_punch/present/viewmodel/check_viewmodel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class CheckScreen extends StatefulWidget {
  final AcademyRepository academyRepository;

  const CheckScreen({super.key, required this.academyRepository});

  @override
  State<CheckScreen> createState() => _CheckScreenState();
}

class _CheckScreenState extends State<CheckScreen> {
  DateTime _dateTime = DateTime.now();
  Timer? _timer;
  String _currentNumber = '';
  String _previousNumber = '';
  String _currentPassWord = '.';
  String _previousPassWord = '* * * *';
  List<String> _punchList= [];

  void _onPressed(String textEditingController) {
    if (_previousNumber.isEmpty) {
      _previousPassWord = '';
    }

    setState(
          () {
        if (_previousNumber.length < 4) {
          _currentNumber = textEditingController;
          _previousNumber += _currentNumber;
          _previousPassWord += _currentPassWord;
          print(_previousNumber);
        }
      },
    );
    if (_previousNumber.length == 4) {
      // print(_previousNumber);
      _checkStudentName();
    }
  }

  Future<void> _checkStudentName() async {
    try {
      // CheckViewModel 클래스의 인스턴스 생성
      CheckViewModel checkViewModel = CheckViewModel(
          repository: widget.academyRepository);

      final studentNames = await checkViewModel.getCheckStudent(
          _previousNumber);
      final parentsNumber = await checkViewModel.pushToStudent(
          _previousNumber);

      if (studentNames.isNotEmpty) {
        // 팝업으로 학생의 이름을 표시
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('학생 이름'),
              content: SizedBox(
                width: 200,
                height: 200,
                child: ListView.builder(
                  itemCount: studentNames.length,
                  itemBuilder: (BuildContext context, int index) {

                    return TextButton(
                      onPressed: () {

                        Navigator.of(context).pop();
                        _punchList.add(studentNames[index]);
                        _punchList.add(parentsNumber[index]);
                        print(_punchList);
                        // 여기에 버튼 기능 추가
                      },
                      child: Text(
                        studentNames[index], style: TextStyle(fontSize: 32),),
                    );
                  },
                ),
              ),
              actions: <Widget>[
                // 팝업 닫기 버튼
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('닫기'),
                ),
              ],
            );
          },
        );
      } else {
        print('해당되는 학생이 없습니다.');
      }
    } catch (e) {
      // 오류 처리
      print('학생 이름을 확인하는 중 오류 발생: $e');
    }
  }

  void _onBackspace() {
    setState(() {
      if (_previousNumber.isNotEmpty) {
        _previousNumber =
            _previousNumber.substring(0, _previousNumber.length - 1);
        _previousPassWord =
            _previousPassWord.substring(0, _previousPassWord.length - 1);
        print(_previousNumber); // Remove the last character
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _updateDateTime();
  }

  void _updateDateTime() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _dateTime = DateTime.now();
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController(text: _previousPassWord);

    return Scaffold(
      appBar: AppBar(
        title: const Text('출결 체크기'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              '날짜: ${_dateTime.year}년 ${_dateTime.month}월 ${_dateTime
                  .day}일  ${_dateTime.hour}:${_dateTime.minute}:${_dateTime
                  .second}',
              style: const TextStyle(fontSize: 20),
            ),
          ),
          const SizedBox(
            height: 150,
          ),
          Container(
            width: 200,
            height: 50,
            decoration:
            BoxDecoration(border: Border.all(color: Colors.grey, width: 2)),
            child: TextField(
              controller: controller,
              style: TextStyle(fontSize: 40),
              textAlign: TextAlign.center,
              readOnly: true,
            ),
          ),
          const SizedBox(
            height: 70,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: SizedBox(
                  width: 150,
                  height: 80,
                  child: OutlinedButton(
                    style: ButtonStyle(
                      side: MaterialStateProperty.all<BorderSide>(
                        BorderSide(width: 1.2), // 외곽선의 두께 설정
                      ),
                    ),
                    onPressed: () {
                      _onPressed('1');
                    },
                    child: const Text(
                      '1',
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: SizedBox(
                  width: 150,
                  height: 80,
                  child: OutlinedButton(
                    style: ButtonStyle(
                      side: MaterialStateProperty.all<BorderSide>(
                        BorderSide(width: 1.2), // 외곽선의 두께 설정
                      ),
                    ),
                    onPressed: () {
                      _onPressed('2');
                    },
                    child: const Text(
                      '2',
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: SizedBox(
                  width: 150,
                  height: 80,
                  child: OutlinedButton(
                    style: ButtonStyle(
                      side: MaterialStateProperty.all<BorderSide>(
                        BorderSide(width: 1.2), // 외곽선의 두께 설정
                      ),
                    ),
                    onPressed: () {
                      _onPressed('3');
                    },
                    child: const Text(
                      '3',
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: SizedBox(
                  width: 150,
                  height: 80,
                  child: OutlinedButton(
                    style: ButtonStyle(
                      side: MaterialStateProperty.all<BorderSide>(
                        BorderSide(width: 1.2), // 외곽선의 두께 설정
                      ),
                    ),
                    onPressed: () {
                      _onPressed('4');
                    },
                    child: const Text(
                      '4',
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: SizedBox(
                  width: 150,
                  height: 80,
                  child: OutlinedButton(
                    style: ButtonStyle(
                      side: MaterialStateProperty.all<BorderSide>(
                        BorderSide(width: 1.2), // 외곽선의 두께 설정
                      ),
                    ),
                    onPressed: () {
                      _onPressed('5');
                    },
                    child: const Text(
                      '5',
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: SizedBox(
                  width: 150,
                  height: 80,
                  child: OutlinedButton(
                    style: ButtonStyle(
                      side: MaterialStateProperty.all<BorderSide>(
                        BorderSide(width: 1.2), // 외곽선의 두께 설정
                      ),
                    ),
                    onPressed: () {
                      _onPressed('6');
                    },
                    child: const Text(
                      '6',
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: SizedBox(
                  width: 150,
                  height: 80,
                  child: OutlinedButton(
                    style: ButtonStyle(
                      side: MaterialStateProperty.all<BorderSide>(
                        BorderSide(width: 1.2), // 외곽선의 두께 설정
                      ),
                    ),
                    onPressed: () {
                      _onPressed('7');
                    },
                    child: const Text(
                      '7',
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: SizedBox(
                  width: 150,
                  height: 80,
                  child: OutlinedButton(
                    style: ButtonStyle(
                      side: MaterialStateProperty.all<BorderSide>(
                        BorderSide(width: 1.2), // 외곽선의 두께 설정
                      ),
                    ),
                    onPressed: () {
                      _onPressed('8');
                    },
                    child: const Text(
                      '8',
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: SizedBox(
                  width: 150,
                  height: 80,
                  child: OutlinedButton(
                    style: ButtonStyle(
                      side: MaterialStateProperty.all<BorderSide>(
                        BorderSide(width: 1.2), // 외곽선의 두께 설정
                      ),
                    ),
                    onPressed: () {
                      _onPressed('9');
                    },
                    child: const Text(
                      '9',
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: SizedBox(
                  width: 150,
                  height: 80,
                ),
              ),
              Expanded(
                flex: 1,
                child: SizedBox(
                  width: 150,
                  height: 80,
                  child: OutlinedButton(
                    style: ButtonStyle(
                      side: MaterialStateProperty.all<BorderSide>(
                        BorderSide(width: 1.2), // 외곽선의 두께 설정
                      ),
                    ),
                    onPressed: () {
                      _onPressed('0');
                    },
                    child: const Text(
                      '0',
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: SizedBox(
                  width: 150,
                  height: 80,
                  child: OutlinedButton(
                      style: ButtonStyle(
                        side: MaterialStateProperty.all<BorderSide>(
                          BorderSide(width: 1.2), // 외곽선의 두께 설정
                        ),
                      ),
                      onPressed: () => _onBackspace(),
                      child: const Icon(Icons.arrow_back_ios_new)),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.blue),
                    minimumSize: MaterialStateProperty.all(
                      Size(200, 90),
                    ),
                  ),
                  child: Text(
                    '등원',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.red),
                    minimumSize: MaterialStateProperty.all(
                      Size(200, 90),
                    ),
                  ),
                  child: Text(
                    '하원',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
