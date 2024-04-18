import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import '../api.dart';

part 'image_response_model.g.dart';

abstract class ImageResponseModel
    implements Built<ImageResponseModel, ImageResponseModelBuilder> {
  int? get total;

  int? get totalHits;

  BuiltList<ImageModel>? get hits;

  ImageResponseModel._();

  factory ImageResponseModel(
          [void Function(ImageResponseModelBuilder) updates]) =
      _$ImageResponseModel;

  static Serializer<ImageResponseModel> get serializer =>
      _$imageResponseModelSerializer;

  static ImageResponseModel fromJson(Map<String, dynamic> json) {
    return dataSerializers.deserializeWith(
        ImageResponseModel.serializer, json)!;
  }
}
