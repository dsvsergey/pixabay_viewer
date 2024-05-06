import '../entities/entity.dart';
import '../repositories/pixabay_image_repository.dart';

abstract interface class PixabayImageUseCase {
  Future<ImageResponseEntity> getImages(int page, {String? query});
}

class PixabayImageUseCaseImpl implements PixabayImageUseCase {
  final PixabayImageRepository repository;

  PixabayImageUseCaseImpl({required this.repository});

  @override
  Future<ImageResponseEntity> getImages(int page, {String? query}) =>
      repository.getImages(page, query: query);
}
