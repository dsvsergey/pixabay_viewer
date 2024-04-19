import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../../domain/entities/entity.dart';
import '../../../domain/usecases/pixabay_image_usecase.dart';

part 'gallery_screen_state.dart';

class GalleryScreenCubit extends Cubit<GalleryScreenState> {
  GalleryScreenCubit() : super(const GalleryScreenInitial());

  final PixabayImageUseCase _pixabay = GetIt.I<PixabayImageUseCase>();

  Future<void> nextImages() async {
    emit(GalleryScreenLoading(state));

    int currentPage = state.currentPage!;
    final images = state.images;
    final page = await _pixabay.getImages(currentPage + 1);

    if (page.hits?.isNotEmpty ?? false) {
      currentPage++;
      images?.addAll(page.hits!);
    }

    emit(GalleryScreenLoaded(
      images: images,
      currentPage: currentPage,
    ));
  }
}
