import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ImageDetailScreen extends StatelessWidget {
  final String imageUrl;

  const ImageDetailScreen({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)!.imageDetail,
          style: const TextStyle(
              color: Colors.black87, fontWeight: FontWeight.bold),
        ),
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
