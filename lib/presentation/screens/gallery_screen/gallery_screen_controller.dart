import 'package:get/get.dart';

import '../../../domain/entities/entity.dart';
import '../../../domain/usecases/pixabay_image_usecase.dart';

class GalleryScreenController extends GetxController {
  final PixabayImageUseCase pixabay = Get.find<PixabayImageUseCase>();
  var currentPage = 0.obs;
  var images = <ImageEntity>[].obs;
  var isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    nextImages();
  }

  Future<void> nextImages() async {
    if (isLoading.isTrue) return;
    isLoading.value = true;

    final page = await pixabay.getImages(currentPage.value + 1);
    if (page.hits?.isNotEmpty ?? false) {
      currentPage.value++;
      images.addAll(page.hits!);
    }

    isLoading.value = false;
  }
}
