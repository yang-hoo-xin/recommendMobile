import 'package:flutter/material.dart';

class MovieDetailPage extends StatelessWidget {
  final String title;
  final String posterUrl;
  final String genre;
  final String releaseDate;
  final double rating;
  final String plotSummary;
  final List<String> cast;

  MovieDetailPage({
    required this.title,
    required this.posterUrl,
    required this.genre,
    required this.releaseDate,
    required this.rating,
    required this.plotSummary,
    required this.cast,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Movie Poster
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.network(
                    posterUrl,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 16),
              // Movie Title
              Text(
                title,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              // Genre and Release Date
              Text(
                '$genre | Released: $releaseDate',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 8),
              // Rating
              Row(
                children: [
                  Icon(Icons.star, color: Colors.amber, size: 20),
                  SizedBox(width: 5),
                  Text(
                    '$rating/10',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              // Plot Summary
              Text(
                "Plot Summary",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                plotSummary,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              // Cast
              Text(
                "Cast",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              // Display cast members in a vertical list
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: cast.map((actor) => Text(actor)).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}