import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import '../api.dart';

part 'pixabay_api_parameters.g.dart';

abstract class PixabayApiParameters
    implements Built<PixabayApiParameters, PixabayApiParametersBuilder> {
  String get key;

  String? get q;

  String? get lang;

  String? get id;

  @BuiltValueField(wireName: 'image_type')
  String? get imageType;

  String? get orientation;

  String? get category;

  @BuiltValueField(wireName: 'min_width')
  int? get minWidth;

  @BuiltValueField(wireName: 'min_height')
  int? get minHeight;

  String? get colors;

  @BuiltValueField(wireName: 'editors_choice')
  bool? get editorsChoice;

  bool? get safesearch;

  String? get order;

  int? get page;

  @BuiltValueField(wireName: 'per_page')
  int? get perPage;

  String? get callback;

  bool? get pretty;

  PixabayApiParameters._();
  factory PixabayApiParameters(
          [void Function(PixabayApiParametersBuilder) updates]) =
      _$PixabayApiParameters;

  static Serializer<PixabayApiParameters> get serializer =>
      _$pixabayApiParametersSerializer;

  Map<String, dynamic> toJson() {
    return dataSerializers.serializeWith(PixabayApiParameters.serializer, this)
        as Map<String, dynamic>;
  }
}
