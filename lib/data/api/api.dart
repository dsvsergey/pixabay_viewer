import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

import 'models/models.dart';
import 'requests/requests.dart';

export 'models/models.dart';
export 'requests/requests.dart';
export 'services/pixabay_api_client.dart';

part 'api.g.dart';

@SerializersFor([
  PixabayApiParameters,
  ImageModel,
  ImageResponseModel,
])
final Serializers dataSerializers =
    (_$dataSerializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
