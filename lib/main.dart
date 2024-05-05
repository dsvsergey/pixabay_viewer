import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/main_app.dart';
import 'data/api/api.dart';
import 'data/repositories/pixabay_image_repository_impl.dart';
import 'domain/repositories/pixabay_image_repository.dart';
import 'domain/usecases/pixabay_image_usecase.dart';

void setupDependencies() {
  Get.lazyPut(() => PixabayApiClient());
  Get.lazyPut<PixabayImageRepository>(
      () => PixabayImageRepositoryImpl(remoteDataSource: Get.find()));
  Get.lazyPut<PixabayImageUseCase>(
      () => PixabayImageUseCaseImpl(repository: Get.find()));
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupDependencies();
  runApp(const MainApp());
}
