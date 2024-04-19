import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

import '../../../core/constants/api_constants.dart';
import '../api.dart';

@singleton
class PixabayApiClient {
  Future<ImageResponseModel?> fetchImages(PixabayApiParameters params) async {
    final queryParams =
        params.toJson().map((key, value) => MapEntry(key, value?.toString()));
    queryParams.removeWhere((key, value) => value == null);

    final uri =
        Uri.parse(ApiConstants.baseUrl).replace(queryParameters: queryParams);
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      return ImageResponseModel.fromJson(jsonDecode(response.body));
    } else {
      return null;
      // throw Exception('Failed to load images');
    }
  }
}
