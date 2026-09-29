import 'package:flutter/material.dart';
import '../data/movies_data.dart';
import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
    itemCount: sampleMovies.length,
    itemBuilder: (context, index) {
      final movie = sampleMovies[index];
      return Card(
        margin: EdgeInsets.only(top: 15.0),
        child: ListTile(
          leading: Image.asset(movie.posterPath, width: 56, fit: BoxFit.cover),
          title:   Text(movie.title),
          trailing: const Icon(Icons.chevron_right),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => DetailsScreen(movie: movie),
              ),
            );
          } 
        )
      );
      }
    );
  }
}

