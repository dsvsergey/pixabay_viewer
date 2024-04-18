import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'entity.dart';

part 'image_response_entity.g.dart';

abstract class ImageResponseEntity
    implements Built<ImageResponseEntity, ImageResponseEntityBuilder> {
  int? get total;

  int? get totalHits;

  BuiltList<ImageEntity>? get hits;

  ImageResponseEntity._();
  factory ImageResponseEntity(
          [void Function(ImageResponseEntityBuilder) updates]) =
      _$ImageResponseEntity;

  static Serializer<ImageResponseEntity> get serializer =>
      _$imageResponseEntitySerializer;
}
