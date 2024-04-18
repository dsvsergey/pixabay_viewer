// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_response_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ImageResponseModel> _$imageResponseModelSerializer =
    new _$ImageResponseModelSerializer();

class _$ImageResponseModelSerializer
    implements StructuredSerializer<ImageResponseModel> {
  @override
  final Iterable<Type> types = const [ImageResponseModel, _$ImageResponseModel];
  @override
  final String wireName = 'ImageResponseModel';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ImageResponseModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.total;
    if (value != null) {
      result
        ..add('total')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.totalHits;
    if (value != null) {
      result
        ..add('totalHits')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.hits;
    if (value != null) {
      result
        ..add('hits')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(ImageModel)])));
    }
    return result;
  }

  @override
  ImageResponseModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ImageResponseModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'total':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'totalHits':
          result.totalHits = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'hits':
          result.hits.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ImageModel)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$ImageResponseModel extends ImageResponseModel {
  @override
  final int? total;
  @override
  final int? totalHits;
  @override
  final BuiltList<ImageModel>? hits;

  factory _$ImageResponseModel(
          [void Function(ImageResponseModelBuilder)? updates]) =>
      (new ImageResponseModelBuilder()..update(updates))._build();

  _$ImageResponseModel._({this.total, this.totalHits, this.hits}) : super._();

  @override
  ImageResponseModel rebuild(
          void Function(ImageResponseModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImageResponseModelBuilder toBuilder() =>
      new ImageResponseModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImageResponseModel &&
        total == other.total &&
        totalHits == other.totalHits &&
        hits == other.hits;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jc(_$hash, totalHits.hashCode);
    _$hash = $jc(_$hash, hits.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ImageResponseModel')
          ..add('total', total)
          ..add('totalHits', totalHits)
          ..add('hits', hits))
        .toString();
  }
}

class ImageResponseModelBuilder
    implements Builder<ImageResponseModel, ImageResponseModelBuilder> {
  _$ImageResponseModel? _$v;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  int? _totalHits;
  int? get totalHits => _$this._totalHits;
  set totalHits(int? totalHits) => _$this._totalHits = totalHits;

  ListBuilder<ImageModel>? _hits;
  ListBuilder<ImageModel> get hits =>
      _$this._hits ??= new ListBuilder<ImageModel>();
  set hits(ListBuilder<ImageModel>? hits) => _$this._hits = hits;

  ImageResponseModelBuilder();

  ImageResponseModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _total = $v.total;
      _totalHits = $v.totalHits;
      _hits = $v.hits?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImageResponseModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ImageResponseModel;
  }

  @override
  void update(void Function(ImageResponseModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImageResponseModel build() => _build();

  _$ImageResponseModel _build() {
    _$ImageResponseModel _$result;
    try {
      _$result = _$v ??
          new _$ImageResponseModel._(
              total: total, totalHits: totalHits, hits: _hits?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'hits';
        _hits?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ImageResponseModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
