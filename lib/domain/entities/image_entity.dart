import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'image_entity.g.dart';

abstract class ImageEntity implements Built<ImageEntity, ImageEntityBuilder> {
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
  int? get userId;
  String? get user;
  String? get userImageURL;

  ImageEntity._();

  factory ImageEntity([void Function(ImageEntityBuilder) updates]) =
      _$ImageEntity;

  static Serializer<ImageEntity> get serializer => _$imageEntitySerializer;
}
