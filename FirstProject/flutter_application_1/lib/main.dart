import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class Player {
  String? name;
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade300,
        title: Text('hello, flutter'),
        centerTitle: true,
      ),
      body: Center(child: Text('hello')),
      // scaffold 우리 화면의 구조를 정해줘야함
    ) // material:  구글, cupertino: 애플 디자인 앱을 어떤 디자인으로 만들고 싶은지, 보통 구글 디자인이 더 보기 좋음
        );
  }
}
