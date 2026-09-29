import 'package:flutter/material.dart';
import '../models/movie.dart';

class DetailsScreen extends StatelessWidget {
  final Movie movie;
  const DetailsScreen({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title), 
        backgroundColor: Color.lerp(Color.fromARGB(255, 0, 0, 0), Color.fromARGB(255, 255, 255, 255), 0.6),
        titleTextStyle: TextStyle(
          fontFamily: 'Roboto', 
          fontWeight: FontWeight.bold,
          fontSize: 25,
          fontStyle: FontStyle.italic,
          color: Color.fromARGB(255, 0, 0, 0)
          )),
        // backgroundColor: Color.lerp(Colors.black, Colors.white, 0.3),
      body: SingleChildScrollView(
        child: 
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Hero poster
              Container(
                constraints: BoxConstraints(
                  maxHeight: 450, maxWidth: double.infinity),
                margin: EdgeInsets.fromLTRB(0, 50.0, 0, 10.0),
                alignment: Alignment.center,
                child: Image.asset(movie.posterPath, fit: BoxFit.cover),
              ),
              Container(
                constraints: BoxConstraints(
                  maxHeight: 100, maxWidth: 350),
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(30.0, 25.0, 0, 0),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 173, 171, 171),
                  borderRadius: BorderRadius.circular(5.0)),
                child: Text("${movie.title} (${movie.year})", textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              ),
              Container(
                constraints: BoxConstraints(
                  maxHeight: 100, maxWidth: 350),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 173, 171, 171),
                  borderRadius: BorderRadius.circular(5.0)),
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(30.0, 5.0, 0, 0),
                child: ListView.builder(
                  itemCount: movie.cast.length,
                  itemBuilder:(context, index) {
                    return Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: 5),
                      child: Text(movie.cast[index], 
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    );
                  },
                ) 
              ),
              Container(
                constraints: BoxConstraints(
                  maxHeight: 150, maxWidth: 350),
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(30.0, 5.0, 0, 35.0),
                padding: EdgeInsets.fromLTRB(5.0, 0, 5.0, 0),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 173, 171, 171),
                  borderRadius: BorderRadius.circular(5.0)),
                child: Row(
                  children: [
                  Expanded(
                    child: Text(movie.synopsis,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),)
                ],)
              )
              // Title, cast, synopsis…
            ],
          ),
        ), 
      );
  }
}