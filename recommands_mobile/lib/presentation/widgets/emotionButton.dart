import 'package:flutter/material.dart';
import 'package:recommands_mobile/presentation/pages/mockData.dart';

class EmotionButton extends StatelessWidget {
  final Color color;
  final String label;
  final VoidCallback onPressed;

  EmotionButton({
    Key? key,
    required this.color,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color, // 设置按钮颜色
        minimumSize: Size(120, 60), // 设置按钮的最小尺寸
      ),
      onPressed: onPressed,
      child: Text(
        label,
        style: TextStyle(
          color: Colors.white, // 设置文本颜色
          fontSize: 18, // 设置文本大小
          fontWeight: FontWeight.bold, // 设置文本加粗
        ),
      ),
    );
  }
}