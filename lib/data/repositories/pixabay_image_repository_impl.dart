import 'package:injectable/injectable.dart';
import '../../core/constants/api_constants.dart';
import '../api/api.dart';

import '../../domain/entities/entity.dart';
import '../../domain/repositories/pixabay_image_repository.dart';

@Singleton(as: PixabayImageRepository)
class PixabayImageRepositoryImpl implements PixabayImageRepository {
  final PixabayApiClient _remoteDataSource;

  PixabayImageRepositoryImpl({required remoteDataSource})
      : _remoteDataSource = remoteDataSource;

  @override
  Future<ImageResponseEntity> getImages(int page) => _remoteDataSource
      .fetchImages(PixabayApiParameters((p0) => p0
        ..key = ApiConstants.apiKey
        ..page = page))
      .then((value) => value.entity);
}
