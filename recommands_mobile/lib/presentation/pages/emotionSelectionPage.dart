import 'package:flutter/material.dart';
import 'package:recommands_mobile/presentation/widgets/emotionButton.dart';
import 'package:recommands_mobile/presentation/pages/mockData.dart';
import 'package:recommands_mobile/presentation/pages/movieDetailPage.dart';
import 'package:recommands_mobile/presentation/widgets/movieCard.dart';
import 'package:recommands_mobile/presentation/services/navigation.dart';
class EmotionSelectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Select Your Mood")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          children: [
            EmotionButton(
              color: Colors.yellow,
              label: "Happy",
              onPressed: ()
              {
                final movieData = mockMovies["Happy"];
                if (movieData != null) {
              navigationService.navigateTo(
              '/details',
              arguments: {
                "title": movieData["title"],
                "posterUrl": movieData["posterUrl"],
                "genre": movieData["genre"],
                "releaseDate": movieData["releaseDate"],
                "rating": movieData["rating"],
                "plotSummary": movieData["plotSummary"],
                "cast": movieData["cast"],
                "themeColor": Colors.yellow,
              }
                    );
                }
              },
            ),
            EmotionButton(
              color: Colors.blue,
              label: "Sad",
              onPressed: () {
                final movieData = mockMovies["Sad"];
                if (movieData != null) {
                  navigationService.navigateTo(
                      '/details',
                      arguments: {
                        "title": movieData["title"],
                        "posterUrl": movieData["posterUrl"],
                        "genre": movieData["genre"],
                        "releaseDate": movieData["releaseDate"],
                        "rating": movieData["rating"],
                        "plotSummary": movieData["plotSummary"],
                        "cast": movieData["cast"],
                        "themeColor": Colors.blue,
                      }
                  );
                }
              },
            ),
            EmotionButton(
              color: Colors.orange,
              label: "Excited",
              onPressed: () {
                final movieData = mockMovies["Exclted"];
                if (movieData != null) {
                  navigationService.navigateTo(
                      '/details',
                      arguments: {
                        "title": movieData["title"],
                        "posterUrl": movieData["posterUrl"],
                        "genre": movieData["genre"],
                        "releaseDate": movieData["releaseDate"],
                        "rating": movieData["rating"],
                        "plotSummary": movieData["plotSummary"],
                        "cast": movieData["cast"],
                        "themeColor": Colors.orange,
                      }
                  );
                }
              },
            ),
            EmotionButton(
              color: Colors.green,
              label: "Relaxed",
              onPressed: () {
                final movieData = mockMovies["Relaxed"];
                if (movieData != null) {
                  navigationService.navigateTo(
                      '/details',
                      arguments: {
                        "title": movieData["title"],
                        "posterUrl": movieData["posterUrl"],
                        "genre": movieData["genre"],
                        "releaseDate": movieData["releaseDate"],
                        "rating": movieData["rating"],
                        "plotSummary": movieData["plotSummary"],
                        "cast": movieData["cast"],
                        "themeColor": Colors.green,
                      }
                  );
                }
              },
            ),
            EmotionButton(
              color: Colors.red,
              label: "Angry",
              onPressed: () {
                final movieData = mockMovies["Angry"];
                if (movieData != null) {
                  navigationService.navigateTo(
                      '/details',
                      arguments: {
                        "title": movieData["title"],
                        "posterUrl": movieData["posterUrl"],
                        "genre": movieData["genre"],
                        "releaseDate": movieData["releaseDate"],
                        "rating": movieData["rating"],
                        "plotSummary": movieData["plotSummary"],
                        "cast": movieData["cast"],
                        "themeColor": Colors.red,
                      }
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
