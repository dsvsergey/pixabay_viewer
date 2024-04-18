import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

import 'image_entity.dart';

export 'image_entity.dart';

part 'entity.g.dart';

@SerializersFor([
  ImageEntity,
])
final Serializers entitySerializers =
    (_$entitySerializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
