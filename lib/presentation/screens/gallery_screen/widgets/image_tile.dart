import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../domain/entities/entity.dart';
import '../../image_detail_screen.dart';

class ImageTile extends StatelessWidget {
  final ImageEntity image;

  const ImageTile({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => ImageDetailScreen(imageUrl: image.webformatURL ?? ''));
      },
      child: GridTile(
        footer: GridTileBar(
          leading: const Icon(Icons.favorite),
          title: Text('${image.likes} Likes'),
          trailing: const Icon(Icons.visibility),
        ),
        child: Image.network(image.webformatURL ?? '', fit: BoxFit.cover),
      ),
    );
  }
}
