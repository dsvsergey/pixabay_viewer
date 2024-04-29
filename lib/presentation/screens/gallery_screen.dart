import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:loading_animations/loading_animations.dart';

import 'cubits/gallery_screen_cubit.dart';
import 'image_detail_screen.dart';

class GalleryScreen extends StatefulWidget {
  const GalleryScreen({super.key});

  @override
  State<GalleryScreen> createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen>
    with TickerProviderStateMixin {
  final _scrollController = ScrollController();
  late AnimationController _animateController;

  @override
  void initState() {
    super.initState();
    _animateController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _setupScrollListener();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _animateController.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant GalleryScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    _setupScrollListener();
  }

  void _setupScrollListener() => _scrollController.addListener(() async {
        if (_scrollController.position.pixels ==
            _scrollController.position.maxScrollExtent) {
          await context.read<GalleryScreenCubit>().nextImages();
        }
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.galleryTitle),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocBuilder<GalleryScreenCubit, GalleryScreenState>(
            builder: (context, state) {
          return GridView.builder(
            controller: _scrollController,
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 1,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            shrinkWrap: false,
            itemCount: state.images?.length ?? 0,
            itemBuilder: (context, index) {
              if (state is GalleryScreenLoading) {
                return SizedBox(
                  height: 50,
                  width: 50,
                  child: Center(
                    child: LoadingBouncingGrid.square(
                      borderSize: 3.0,
                      size: 30.0,
                      duration: const Duration(milliseconds: 500),
                    ),
                  ),
                );
              }

              final imageUrl = state.images?[index].webformatURL ?? '';
              final likes = state.images?[index].likes ?? 0;
              final views = state.images?[index].views ?? 0;

              return Hero(
                tag: imageUrl,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            ImageDetailScreen(imageUrl: imageUrl),
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          return ScaleTransition(
                            scale: Tween<double>(
                              begin: 0.0,
                              end: 1.0,
                            ).animate(CurvedAnimation(
                              parent: animation,
                              curve: Curves.easeInOut,
                            )),
                            child: child,
                          );
                        },
                      ),
                    );
                  },
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: 1.0,
                        ),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            child: Image.network(
                              imageUrl,
                              fit: BoxFit.contain,
                            ),
                          ),
                          Row(
                            children: [
                              const Icon(Icons.favorite),
                              Text(' $likes'),
                              const Spacer(),
                              const Icon(Icons.visibility),
                              Text(' $views'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        }),
      ),
    );
  }
}
