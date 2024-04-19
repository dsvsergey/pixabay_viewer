part of 'gallery_screen_cubit.dart';

abstract class GalleryScreenState extends Equatable {
  List<ImageEntity>? get images;
  int? get currentPage;

  const GalleryScreenState();

  @override
  List<Object> get props => [
        if (images != null) ...images!,
        if (currentPage != null) currentPage!,
      ];
}

class GalleryScreenInitial extends GalleryScreenState {
  const GalleryScreenInitial();

  @override
  int? get currentPage => 0;

  @override
  List<ImageEntity>? get images => [];
}

class GalleryScreenLoading extends GalleryScreenState {
  GalleryScreenLoading(GalleryScreenState state)
      : currentPage = state.currentPage,
        images = state.images;

  @override
  final int? currentPage;

  @override
  final List<ImageEntity>? images;
}

class GalleryScreenLoaded extends GalleryScreenState {
  @override
  final List<ImageEntity>? images;

  @override
  final int? currentPage;

  const GalleryScreenLoaded({
    required this.images,
    required this.currentPage,
  });
}
