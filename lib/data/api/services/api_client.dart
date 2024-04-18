import 'dart:convert';
import 'package:http/http.dart' as http;

import '../../../core/constants/api_constants.dart';
import '../api.dart';

class PixabayApiClient {
  Future<ImageResponseModel> fetchImages(PixabayApiParameters params) async {
    final queryParams = params.toJson();
    queryParams.removeWhere((key, value) => value == null);

    final uri =
        Uri.parse(ApiConstants.baseUrl).replace(queryParameters: queryParams);
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      return ImageResponseModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load images');
    }
  }
}
