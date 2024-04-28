import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CheckScreen extends StatefulWidget {
  const CheckScreen({super.key});

  @override
  State<CheckScreen> createState() => _CheckScreenState();
}

class _CheckScreenState extends State<CheckScreen> {
  DateTime _dateTime = DateTime.now();
  Timer? _timer;
  String _currentNumber = '';
  String _previousNumber = '';
  String _currentPassWord = '';
  String _previousPassWord = '* * * *';

  void _onPressed(String textEditingController) {
    if(_previousNumber.length == 0)
      {
        _previousPassWord = '';
      }
    setState(() {
      if (_previousNumber.length < 4) {
        _currentNumber = textEditingController;
        _previousNumber += _currentNumber;
        _previousPassWord += _currentPassWord;
        // print(_previousNumber);
      }
      if (_previousNumber.length == 4) {
        //Todo firebase에 값을 보낸다.
      }
    });
  }

  void _onBackspace() {
    setState(() {
      if (_previousNumber.isNotEmpty) {
        _previousNumber = _previousNumber.substring(
            0, _previousNumber.length - 1); // Remove the last character
        // print(_previousNumber);
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
    //Todo passWord 숫자의 변화하게 하는 것 고치기

    final controller = TextEditingController(text: _previousPassWord );

    return Scaffold(
      appBar: AppBar(
        title: const Text('출결 체크기'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              '날짜: ${_dateTime.year}년 ${_dateTime.month}월 ${_dateTime.day}일  ${_dateTime.hour}:${_dateTime.minute}:${_dateTime.second}',
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
                child: Container(
                  width: 150,
                  height: 80,
                  child: OutlinedButton(
                    style: ButtonStyle(
                      side: MaterialStateProperty.all<BorderSide>(
                        BorderSide(width: 1.2), // 외곽선의 두께 설정
                      ),
                    ),
                    onPressed: () {
                      _currentPassWord = '.';
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
                child: Container(
                  width: 150,
                  height: 80,
                  child: OutlinedButton(
                    style: ButtonStyle(
                      side: MaterialStateProperty.all<BorderSide>(
                        BorderSide(width: 1.0), // 외곽선의 두께 설정
                      ),
                    ),
                    onPressed: () => _onPressed('2'),
                    child: const Text(
                      '2',
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  width: 150,
                  height: 80,
                  child: OutlinedButton(
                    style: ButtonStyle(
                      side: MaterialStateProperty.all<BorderSide>(
                        BorderSide(width: 1.0), // 외곽선의 두께 설정
                      ),
                    ),
                    onPressed: () => _onPressed('3'),
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
                child: Container(
                  width: 150,
                  height: 80,
                  child: OutlinedButton(
                    style: ButtonStyle(
                      side: MaterialStateProperty.all<BorderSide>(
                        BorderSide(width: 1.0), // 외곽선의 두께 설정
                      ),
                    ),
                    onPressed: () => _onPressed('4'),
                    child: const Text(
                      '4',
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  width: 150,
                  height: 80,
                  child: OutlinedButton(
                    style: ButtonStyle(
                      side: MaterialStateProperty.all<BorderSide>(
                        BorderSide(width: 1.0), // 외곽선의 두께 설정
                      ),
                    ),
                    onPressed: () => _onPressed('5'),
                    child: const Text(
                      '5',
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  width: 150,
                  height: 80,
                  child: OutlinedButton(
                    style: ButtonStyle(
                      side: MaterialStateProperty.all<BorderSide>(
                        BorderSide(width: 1.0), // 외곽선의 두께 설정
                      ),
                    ),
                    onPressed: () => _onPressed('6'),
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
                child: Container(
                  width: 150,
                  height: 80,
                  child: OutlinedButton(
                    style: ButtonStyle(
                      side: MaterialStateProperty.all<BorderSide>(
                        BorderSide(width: 1.0), // 외곽선의 두께 설정
                      ),
                    ),
                    onPressed: () => _onPressed('7'),
                    child: const Text(
                      '7',
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  width: 150,
                  height: 80,
                  child: OutlinedButton(
                    style: ButtonStyle(
                      side: MaterialStateProperty.all<BorderSide>(
                        BorderSide(width: 1.0), // 외곽선의 두께 설정
                      ),
                    ),
                    onPressed: () => _onPressed('8'),
                    child: const Text(
                      '8',
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  width: 150,
                  height: 80,
                  child: OutlinedButton(
                    style: ButtonStyle(
                      side: MaterialStateProperty.all<BorderSide>(
                        BorderSide(width: 1.0), // 외곽선의 두께 설정
                      ),
                    ),
                    onPressed: () => _onPressed('9'),
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
                child: Container(
                  width: 150,
                  height: 80,
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  width: 150,
                  height: 80,
                  child: OutlinedButton(
                    style: ButtonStyle(
                      side: MaterialStateProperty.all<BorderSide>(
                        BorderSide(width: 1.0), // 외곽선의 두께 설정
                      ),
                    ),
                    onPressed: () => _onPressed('0'),
                    child: const Text(
                      '0',
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  width: 150,
                  height: 80,
                  child: OutlinedButton(
                      style: ButtonStyle(
                        side: MaterialStateProperty.all<BorderSide>(
                          BorderSide(width: 1.0), // 외곽선의 두께 설정
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
                  child: Text(
                    '등원',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                    minimumSize: MaterialStateProperty.all(
                      Size(200, 90),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    '하원',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.red),
                    minimumSize: MaterialStateProperty.all(
                      Size(200, 90),
                    ),
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
