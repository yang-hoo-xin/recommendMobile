import 'package:flutter/material.dart';
import 'package:recommands_mobile/presentation/pages/movieDetailPage.dart';
import 'package:recommands_mobile/presentation/services/navigation.dart';
class MovieCard extends StatelessWidget {
  final String title;
  final String posterUrl;
  final String genre;
  final String releaseDate;
  final double rating;
  final String duration;
  final String plotSummary;
  final Color themeColor;

  const MovieCard({
    required this.title,
    required this.posterUrl,
    required this.genre,
    required this.releaseDate,
    required this.rating,
    required this.duration,
    required this.plotSummary,
    required this.themeColor
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
navigationService.navigateTo('/details',
  arguments:
    {
      'title': title,
      'posterUrl': posterUrl,
      'genre': genre,
      'releaseDate': releaseDate,
      'rating': rating,
      'plotSummary': plotSummary,
      'themeColor': themeColor,
    }

);



      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Movie Poster
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
              child: Image.network(
                posterUrl,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title
                  Text(
                    title,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  // Release Date
                  Text("Release Date: $releaseDate", style: TextStyle(fontSize: 16)),
                  // Genre
                  Text("Genre: $genre", style: TextStyle(fontSize: 16)),
                  // Duration
                  Text("Duration: $duration", style: TextStyle(fontSize: 16)),
                  // Rating
                  Text("Rating: ${rating.toString()}/10", style: TextStyle(fontSize: 16)),
                  SizedBox(height: 10),
                  Divider(thickness: 1),
                  // Plot Summary
                  ExpansionTile(
                    title: Text("Plot Summary", style: TextStyle(fontSize: 16)),
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text(
                          plotSummary,
                          style: TextStyle(fontSize: 14, color: Colors.black87),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}