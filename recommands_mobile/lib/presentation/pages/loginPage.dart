import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // 用于退出应用

class LoginPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              // 退出应用
              SystemNavigator.pop();
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Email Input
              TextFormField(
                decoration: InputDecoration(labelText: 'Email'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              // Password Input
              TextFormField(
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your Password';
                  } else if (value.length < 8) {
                    return 'Your password must be at least 8 characters long';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              // Login Button
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // 登录成功后跳转到主页面
                    Navigator.pushReplacementNamed(context, '/emotion');
                  }
                },
                child: Text("Login"),
              ),
              SizedBox(height: 20),
              // Register Button
              ElevatedButton(
                onPressed: () {
                  // 跳转到注册页面
                  Navigator.pushNamed(context, '/register');
                },
                child: Text("Register"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // 蓝色表示注册
                ),
              ),
              SizedBox(height: 20),
              // Exit Button
              ElevatedButton(
                onPressed: () {
                  // 使用 SystemNavigator.pop() 退出应用
                  SystemNavigator.pop();
                },
                child: Text("Exit"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red, // 红色表示退出
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}