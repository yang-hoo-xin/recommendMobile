import 'package:flutter/material.dart';
import 'package:recommands_mobile/presentation/pages/loginPage.dart'; // 导入登录页面
import 'package:recommands_mobile/presentation/pages/emotionSelectionPage.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your App Name',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: EmotionSelectionPage(), // login page is init page
    );
  }
}
