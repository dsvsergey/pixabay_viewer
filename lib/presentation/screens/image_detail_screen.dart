import 'package:flutter/material.dart';

class ImageDetailScreen extends StatelessWidget {
  const ImageDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("imageModel.title"),
      ),
      body: Center(
        child: Image.network(
            'https://cdn.pixabay.com/photo/2022/09/02/19/55/crystal-7428278_1280.jpg'),
      ),
    );
  }
}
