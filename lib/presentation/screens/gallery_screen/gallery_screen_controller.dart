import 'package:get/get.dart';
import 'dart:async';

import '../../../domain/entities/entity.dart';
import '../../../domain/usecases/pixabay_image_usecase.dart';

class GalleryScreenController extends GetxController {
  final PixabayImageUseCase pixabay = Get.find<PixabayImageUseCase>();
  var currentPage = 0.obs;
  var images = <ImageEntity>[].obs;
  var isLoading = false.obs;
  var searchTerm = ''.obs;

  Timer? _debounce;

  @override
  void onInit() {
    super.onInit();
    debounce(searchTerm, (_) => fetchImages(),
        time: const Duration(milliseconds: 500));
    fetchImages();
  }

  Future<void> fetchImages() async {
    if (isLoading.isTrue) return;
    isLoading.value = true;

    final page =
        await pixabay.getImages(currentPage.value + 1, query: searchTerm.value);
    if (page.hits?.isNotEmpty ?? false) {
      currentPage.value++;
      images.addAll(page.hits!);
    }

    isLoading.value = false;
  }

  void setSearchTerm(String term) {
    searchTerm.value = term;
    currentPage.value = 0;
    images.clear();
  }

  @override
  void onClose() {
    _debounce?.cancel();
    super.onClose();
  }
}
