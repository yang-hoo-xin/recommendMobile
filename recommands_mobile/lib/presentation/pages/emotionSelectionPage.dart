import 'package:flutter/material.dart';
import '../widgets/emotionButton.dart';

class EmotionSelectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Select Your Mood")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2, // 每行两个按钮
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          children: [
            EmotionButton(
              color: Colors.yellow,
              label: "Happy",
              onPressed: () {
                // events on happy button
              },
            ),
            EmotionButton(
              color: Colors.blue,
              label: "Sad",
              onPressed: () {
                // events on sad button
              },
            ),
            EmotionButton(
              color: Colors.orange,
              label: "Excited",
              onPressed: () {
                // events on excited button
              },
            ),
            EmotionButton(
              color: Colors.green,
              label: "Relaxed",
              onPressed: () {
                // events on relaxed button
              },
            ),
            EmotionButton(
              color: Colors.red,
              label: "Angry",
              onPressed: () {
                // events on angry button
              },
            ),
          ],
        ),
      ),
    );
  }
}
