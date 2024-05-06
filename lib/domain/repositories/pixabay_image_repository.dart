import '../entities/entity.dart';

abstract interface class PixabayImageRepository {
  Future<ImageResponseEntity> getImages(int page, {String? query});
}
