import 'package:injectable/injectable.dart';

import '../entities/entity.dart';
import '../repositories/pixabay_image_repository.dart';

abstract interface class PixabayImageUseCase {
  Future<ImageResponseEntity> getImages(int page);
}

@LazySingleton(as: PixabayImageUseCase)
class PixabayImageUseCaseImpl implements PixabayImageUseCase {
  final PixabayImageRepository repository;

  PixabayImageUseCaseImpl({required this.repository});

  @override
  Future<ImageResponseEntity> getImages(int page) => repository.getImages(page);
}
