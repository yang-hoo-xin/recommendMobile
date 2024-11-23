import 'package:flutter/material.dart';
import 'package:recommands_mobile/presentation/pages/loginPage.dart'; // 导入登录页面
import 'package:recommands_mobile/presentation/pages/emotionSelectionPage.dart';
import 'package:recommands_mobile/presentation/pages/movieDetailPage.dart';
import 'package:recommands_mobile/presentation/services/navigation.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MMR',
      navigatorKey: navigationService.navigatorKey, // 设置导航键
      initialRoute: '/emotion', // 设置初始页面为登录页面
      routes: {
        '/login': (context) => LoginPage(),
        '/register': (context) => LoginPage(), // 注册逻辑可与登录共享
        '/emotion': (context) => EmotionSelectionPage(),
        '/details': (context) {
          final args = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
          return MovieDetailsPage(
            title: args["title"] ?? "Unknown Title",
            posterUrl: args["posterUrl"] ?? "https://example.com/default-poster.jpg",
            genre: args["genre"] ?? "Unknown Genre",
            releaseDate: args["releaseDate"] ?? "Unknown Date",
            rating: args["rating"] ?? 0.0,
            plotSummary: args["plotSummary"] ?? "No summary available.",
            cast: List<String>.from(args["cast"] ?? []),
            themeColor: args["themeColor"] ?? Colors.grey,
          );
        },
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(), // login page is init page
    );
  }
}
