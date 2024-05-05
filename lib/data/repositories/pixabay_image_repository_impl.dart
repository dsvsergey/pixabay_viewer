import 'package:built_collection/built_collection.dart';
import '../../core/constants/api_constants.dart';
import '../api/api.dart';

import '../../domain/entities/entity.dart';
import '../../domain/repositories/pixabay_image_repository.dart';

class PixabayImageRepositoryImpl implements PixabayImageRepository {
  final PixabayApiClient remoteDataSource;

  PixabayImageRepositoryImpl({required this.remoteDataSource});

  @override
  Future<ImageResponseEntity> getImages(int page) => remoteDataSource
      .fetchImages(PixabayApiParameters((p0) => p0
        ..key = ApiConstants.apiKey
        ..page = page
        ..perPage = 50))
      .then((value) =>
          value?.entity ??
          ImageResponseEntity(
            (p0) => p0
              ..total = 0
              ..totalHits = 0
              ..hits = ListBuilder([]),
          ));
}
