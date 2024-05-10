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
        Get.to(() => ImageDetailScreen(imageUrl: image.webformatURL ?? ''),
            transition: Transition.fadeIn,
            curve: Curves.easeIn,
            duration: const Duration(milliseconds: 500));
      },
      child: GridTile(
        footer: GridTileBar(
          leading: Row(
            children: [
              const Icon(
                Icons.favorite,
                color: Colors.black87,
              ),
              Text(
                '${image.likes}',
                style: const TextStyle(
                    color: Colors.black87, fontWeight: FontWeight.bold),
              )
            ],
          ),
          title: const Spacer(),
          trailing: Row(
            children: [
              const Icon(
                Icons.visibility,
                color: Colors.black87,
              ),
              Text(
                '${image.views}',
                style: const TextStyle(
                    color: Colors.black87, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        child: Image.network(image.webformatURL ?? '', fit: BoxFit.cover),
      ),
    );
  }
}
