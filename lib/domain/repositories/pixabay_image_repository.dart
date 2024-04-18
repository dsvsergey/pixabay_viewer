import '../entities/entity.dart';

abstract class PixabayImageRepository {
  Future<ImageResponseEntity> getImages(int page);
}
