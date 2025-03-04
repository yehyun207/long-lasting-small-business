import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          '설정',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 30),
            child: Text(
              '설정 및 기타',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 15,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Name(name: "사용자 정보"),
          Name(name: "앱 초기화"),
          Name(name: "개인정보 수집 및 이용"),
          Name(name: "이용약관 동의"),
          Name(name: "오픈소스 활용 안내"),
          Name(name: "백년가게 홈페이지"),
          Name(name: "소상공인진흥공단 홈페이지"),
          Name(name: "중소번체 24 홈페이지"),
          Name(name: "뉴 스타트업 홈페이지"),
          Name(name: "K-스타트업 홈페이지"),
          Name(name: "중소기업현황정보시스템")
        ],
      ),
    );
  }
}

class Name extends StatelessWidget {
  const Name({super.key, required this.name});
  final name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Divider(
            thickness: 1.0,
            color: Colors.grey,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '$name',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                ),
              ),
              Icon(Icons.arrow_forward_outlined, color: Colors.blue,)
            ],
          ),
        )
      ],
    );
  }
}



