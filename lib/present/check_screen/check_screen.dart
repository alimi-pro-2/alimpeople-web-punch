import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckScreen extends StatefulWidget {
  const CheckScreen({super.key});

  @override
  State<CheckScreen> createState() => _CheckScreenState();
}

class _CheckScreenState extends State<CheckScreen> {
  DateTime _dateTime= DateTime.now();
  Timer? _timer;//

  @override
  void initState() {
    _updateDateTime();
    super.initState();
  }

  void _updateDateTime() {
    _timer =Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _dateTime = DateTime.now();
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel(); // Timer를 dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('출결 체크기'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              '날짜: ${_dateTime.year}년 ${_dateTime.month}월 ${_dateTime.day}일  ${_dateTime.hour}:${_dateTime.minute}:${_dateTime.second}',
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(
            height: 150,
          ),
          Container(
            width: 200,
            height: 50,
            decoration:
                BoxDecoration(border: Border.all(color: Colors.grey, width: 2)),
            child: Center(
              child: Text(
                '* * * *',
                style: TextStyle(fontSize: 40),
              ),
            ),
          ),
          SizedBox(
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
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        '1',
                        style: TextStyle(fontSize: 40),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  width: 150,
                  height: 80,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        '2',
                        style: TextStyle(fontSize: 40),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  width: 150,
                  height: 80,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        '3',
                        style: TextStyle(fontSize: 40),
                      ),
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
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        '4',
                        style: TextStyle(fontSize: 40),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  width: 150,
                  height: 80,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        '5',
                        style: TextStyle(fontSize: 40),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  width: 150,
                  height: 80,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        '6',
                        style: TextStyle(fontSize: 40),
                      ),
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
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        '7',
                        style: TextStyle(fontSize: 40),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  width: 150,
                  height: 80,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        '8',
                        style: TextStyle(fontSize: 40),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  width: 150,
                  height: 80,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        '9',
                        style: TextStyle(fontSize: 40),
                      ),
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
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        '0',
                        style: TextStyle(fontSize: 40),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  width: 150,
                  height: 80,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(child: OutlinedButton(onPressed: () {  },
                  child: Icon(Icons.arrow_back_ios_new))),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
