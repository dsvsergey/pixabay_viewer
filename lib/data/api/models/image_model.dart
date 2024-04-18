import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import '../api.dart';

part 'image_model.g.dart';

abstract class ImageModel implements Built<ImageModel, ImageModelBuilder> {
  int? get id;

  String? get pageURL;

  String? get type;

  String? get tags;

  String? get previewURL;

  int? get previewWidth;

  int? get previewHeight;

  String? get webformatURL;

  int? get webformatWidth;

  int? get webformatHeight;

  String? get largeImageURL;

  String? get fullHDURL;

  String? get imageURL;

  int? get imageWidth;

  int? get imageHeight;

  int? get imageSize;

  int? get views;

  int? get downloads;

  int? get likes;

  int? get comments;

  @BuiltValueField(wireName: 'user_id')
  int? get userId;

  String? get user;

  @BuiltValueField(wireName: 'userImageURL')
  String? get userImageURL;

  ImageModel._();

  factory ImageModel([void Function(ImageModelBuilder) updates]) = _$ImageModel;

  static Serializer<ImageModel> get serializer => _$imageModelSerializer;

  static ImageModel fromJson(Map<String, dynamic> json) {
    return dataSerializers.deserializeWith(ImageModel.serializer, json)!;
  }
}
