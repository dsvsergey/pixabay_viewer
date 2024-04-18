// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pixabay_api_parameters.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PixabayApiParameters> _$pixabayApiParametersSerializer =
    new _$PixabayApiParametersSerializer();

class _$PixabayApiParametersSerializer
    implements StructuredSerializer<PixabayApiParameters> {
  @override
  final Iterable<Type> types = const [
    PixabayApiParameters,
    _$PixabayApiParameters
  ];
  @override
  final String wireName = 'PixabayApiParameters';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, PixabayApiParameters object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'key',
      serializers.serialize(object.key, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.q;
    if (value != null) {
      result
        ..add('q')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lang;
    if (value != null) {
      result
        ..add('lang')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.imageType;
    if (value != null) {
      result
        ..add('image_type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.orientation;
    if (value != null) {
      result
        ..add('orientation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.category;
    if (value != null) {
      result
        ..add('category')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.minWidth;
    if (value != null) {
      result
        ..add('min_width')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.minHeight;
    if (value != null) {
      result
        ..add('min_height')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.colors;
    if (value != null) {
      result
        ..add('colors')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.editorsChoice;
    if (value != null) {
      result
        ..add('editors_choice')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.safesearch;
    if (value != null) {
      result
        ..add('safesearch')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.order;
    if (value != null) {
      result
        ..add('order')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.page;
    if (value != null) {
      result
        ..add('page')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.perPage;
    if (value != null) {
      result
        ..add('per_page')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.callback;
    if (value != null) {
      result
        ..add('callback')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.pretty;
    if (value != null) {
      result
        ..add('pretty')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  PixabayApiParameters deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PixabayApiParametersBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'key':
          result.key = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'q':
          result.q = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lang':
          result.lang = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image_type':
          result.imageType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'orientation':
          result.orientation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'category':
          result.category = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'min_width':
          result.minWidth = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'min_height':
          result.minHeight = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'colors':
          result.colors = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'editors_choice':
          result.editorsChoice = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'safesearch':
          result.safesearch = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'order':
          result.order = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'page':
          result.page = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'per_page':
          result.perPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'callback':
          result.callback = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'pretty':
          result.pretty = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$PixabayApiParameters extends PixabayApiParameters {
  @override
  final String key;
  @override
  final String? q;
  @override
  final String? lang;
  @override
  final String? id;
  @override
  final String? imageType;
  @override
  final String? orientation;
  @override
  final String? category;
  @override
  final int? minWidth;
  @override
  final int? minHeight;
  @override
  final String? colors;
  @override
  final bool? editorsChoice;
  @override
  final bool? safesearch;
  @override
  final String? order;
  @override
  final int? page;
  @override
  final int? perPage;
  @override
  final String? callback;
  @override
  final bool? pretty;

  factory _$PixabayApiParameters(
          [void Function(PixabayApiParametersBuilder)? updates]) =>
      (new PixabayApiParametersBuilder()..update(updates))._build();

  _$PixabayApiParameters._(
      {required this.key,
      this.q,
      this.lang,
      this.id,
      this.imageType,
      this.orientation,
      this.category,
      this.minWidth,
      this.minHeight,
      this.colors,
      this.editorsChoice,
      this.safesearch,
      this.order,
      this.page,
      this.perPage,
      this.callback,
      this.pretty})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(key, r'PixabayApiParameters', 'key');
  }

  @override
  PixabayApiParameters rebuild(
          void Function(PixabayApiParametersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PixabayApiParametersBuilder toBuilder() =>
      new PixabayApiParametersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PixabayApiParameters &&
        key == other.key &&
        q == other.q &&
        lang == other.lang &&
        id == other.id &&
        imageType == other.imageType &&
        orientation == other.orientation &&
        category == other.category &&
        minWidth == other.minWidth &&
        minHeight == other.minHeight &&
        colors == other.colors &&
        editorsChoice == other.editorsChoice &&
        safesearch == other.safesearch &&
        order == other.order &&
        page == other.page &&
        perPage == other.perPage &&
        callback == other.callback &&
        pretty == other.pretty;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, q.hashCode);
    _$hash = $jc(_$hash, lang.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, imageType.hashCode);
    _$hash = $jc(_$hash, orientation.hashCode);
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jc(_$hash, minWidth.hashCode);
    _$hash = $jc(_$hash, minHeight.hashCode);
    _$hash = $jc(_$hash, colors.hashCode);
    _$hash = $jc(_$hash, editorsChoice.hashCode);
    _$hash = $jc(_$hash, safesearch.hashCode);
    _$hash = $jc(_$hash, order.hashCode);
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jc(_$hash, perPage.hashCode);
    _$hash = $jc(_$hash, callback.hashCode);
    _$hash = $jc(_$hash, pretty.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PixabayApiParameters')
          ..add('key', key)
          ..add('q', q)
          ..add('lang', lang)
          ..add('id', id)
          ..add('imageType', imageType)
          ..add('orientation', orientation)
          ..add('category', category)
          ..add('minWidth', minWidth)
          ..add('minHeight', minHeight)
          ..add('colors', colors)
          ..add('editorsChoice', editorsChoice)
          ..add('safesearch', safesearch)
          ..add('order', order)
          ..add('page', page)
          ..add('perPage', perPage)
          ..add('callback', callback)
          ..add('pretty', pretty))
        .toString();
  }
}

class PixabayApiParametersBuilder
    implements Builder<PixabayApiParameters, PixabayApiParametersBuilder> {
  _$PixabayApiParameters? _$v;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  String? _q;
  String? get q => _$this._q;
  set q(String? q) => _$this._q = q;

  String? _lang;
  String? get lang => _$this._lang;
  set lang(String? lang) => _$this._lang = lang;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _imageType;
  String? get imageType => _$this._imageType;
  set imageType(String? imageType) => _$this._imageType = imageType;

  String? _orientation;
  String? get orientation => _$this._orientation;
  set orientation(String? orientation) => _$this._orientation = orientation;

  String? _category;
  String? get category => _$this._category;
  set category(String? category) => _$this._category = category;

  int? _minWidth;
  int? get minWidth => _$this._minWidth;
  set minWidth(int? minWidth) => _$this._minWidth = minWidth;

  int? _minHeight;
  int? get minHeight => _$this._minHeight;
  set minHeight(int? minHeight) => _$this._minHeight = minHeight;

  String? _colors;
  String? get colors => _$this._colors;
  set colors(String? colors) => _$this._colors = colors;

  bool? _editorsChoice;
  bool? get editorsChoice => _$this._editorsChoice;
  set editorsChoice(bool? editorsChoice) =>
      _$this._editorsChoice = editorsChoice;

  bool? _safesearch;
  bool? get safesearch => _$this._safesearch;
  set safesearch(bool? safesearch) => _$this._safesearch = safesearch;

  String? _order;
  String? get order => _$this._order;
  set order(String? order) => _$this._order = order;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  int? _perPage;
  int? get perPage => _$this._perPage;
  set perPage(int? perPage) => _$this._perPage = perPage;

  String? _callback;
  String? get callback => _$this._callback;
  set callback(String? callback) => _$this._callback = callback;

  bool? _pretty;
  bool? get pretty => _$this._pretty;
  set pretty(bool? pretty) => _$this._pretty = pretty;

  PixabayApiParametersBuilder();

  PixabayApiParametersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _key = $v.key;
      _q = $v.q;
      _lang = $v.lang;
      _id = $v.id;
      _imageType = $v.imageType;
      _orientation = $v.orientation;
      _category = $v.category;
      _minWidth = $v.minWidth;
      _minHeight = $v.minHeight;
      _colors = $v.colors;
      _editorsChoice = $v.editorsChoice;
      _safesearch = $v.safesearch;
      _order = $v.order;
      _page = $v.page;
      _perPage = $v.perPage;
      _callback = $v.callback;
      _pretty = $v.pretty;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PixabayApiParameters other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PixabayApiParameters;
  }

  @override
  void update(void Function(PixabayApiParametersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PixabayApiParameters build() => _build();

  _$PixabayApiParameters _build() {
    final _$result = _$v ??
        new _$PixabayApiParameters._(
            key: BuiltValueNullFieldError.checkNotNull(
                key, r'PixabayApiParameters', 'key'),
            q: q,
            lang: lang,
            id: id,
            imageType: imageType,
            orientation: orientation,
            category: category,
            minWidth: minWidth,
            minHeight: minHeight,
            colors: colors,
            editorsChoice: editorsChoice,
            safesearch: safesearch,
            order: order,
            page: page,
            perPage: perPage,
            callback: callback,
            pretty: pretty);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
