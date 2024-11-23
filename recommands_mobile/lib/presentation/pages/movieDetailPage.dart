import 'package:flutter/material.dart';

class MovieDetailsPage extends StatelessWidget {
  final String title;
  final String posterUrl;
  final String genre;
  final String releaseDate;
  final double rating;
  final String plotSummary;
  final List<String> cast;
  final Color themeColor;

  const MovieDetailsPage({
    Key? key,
    required this.title,
    required this.posterUrl,
    required this.genre,
    required this.releaseDate,
    required this.rating,
    required this.plotSummary,
    required this.cast,
    required this.themeColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themeColor.withOpacity(0.1),
      appBar: AppBar(
        title: Text(title),
        backgroundColor: themeColor,
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/');
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Movie Poster
            Container(
              height: 200,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                image: DecorationImage(
                  image: NetworkImage(posterUrl),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            SizedBox(height: 20),
            // Movie Title
            Text(
              title,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: themeColor, // 动态设置字体颜色
              ),
            ),
            SizedBox(height: 10),
            // Release Date, Genre, and Duration
            Text("Release Date: $releaseDate", style: TextStyle(color: Colors.white,fontSize: 16)),
            Text("Genre: $genre", style: TextStyle(color: Colors.white,fontSize: 16)),
            Text("Rating: ${rating.toString()}/10", style: TextStyle(color: Colors.white,fontSize: 16)),
            Divider(thickness: 1, height: 20),
            // Plot Summary Section
            ExpansionTile(
              title: Text(
                "Plot Summary",
                style: TextStyle(
                  color: themeColor, // 动态设置标题颜色
                  fontWeight: FontWeight.bold,
                ),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    plotSummary,
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ],
            ),
            // Cast Section
            ExpansionTile(
              title: Text(
                "Cast & Crew",
                style: TextStyle(
                  color: themeColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: cast.map((actor) => Text(actor)).toList(),
                  ),
                ),
              ],
            ),
            // Ratings & Reviews Section
            ExpansionTile(
              title: Text(
                "Ratings & Reviews",
                style: TextStyle(
                  color: themeColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    "Rating: $rating/5\nReviews: Great movie with amazing action scenes!",
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
