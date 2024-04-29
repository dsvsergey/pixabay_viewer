import 'package:flutter/material.dart';

class ImageDetailScreen extends StatelessWidget {
  final String imageUrl;

  const ImageDetailScreen({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Detail'),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final appBarHeight = AppBar().preferredSize.height;
          final availableHeight = constraints.maxHeight - appBarHeight;

          return Stack(
            children: [
              Center(
                child: SizedBox(
                  height: availableHeight,
                  child: Hero(
                    tag: imageUrl,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Image.network(imageUrl),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
