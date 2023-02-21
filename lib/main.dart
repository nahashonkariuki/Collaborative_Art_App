import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<String> images = [    'https://picsum.photos/id/237/200/300',    'https://picsum.photos/id/238/200/300',    'https://picsum.photos/id/239/200/300',    'https://picsum.photos/id/240/200/300',    'https://picsum.photos/id/241/200/300',    'https://picsum.photos/id/242/200/300',  ]; // list of image URLs

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image Grid Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Image Grid Demo'),
        ),
        body: GridView.builder(
          itemCount: images.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // number of cells per row
            mainAxisSpacing: 10.0, // spacing between rows
            crossAxisSpacing: 10.0, // spacing between columns
            childAspectRatio: 0.75, // aspect ratio of each cell (width / height)
          ),
          itemBuilder: (context, index) {
            return Image.network(
              images[index], // get image URL from list
              fit: BoxFit.cover, // set image scaling mode
            );
          },
        ),
      ),
    );
  }
}
