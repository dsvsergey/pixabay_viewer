// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ImageModel> _$imageModelSerializer = new _$ImageModelSerializer();

class _$ImageModelSerializer implements StructuredSerializer<ImageModel> {
  @override
  final Iterable<Type> types = const [ImageModel, _$ImageModel];
  @override
  final String wireName = 'ImageModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, ImageModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.pageURL;
    if (value != null) {
      result
        ..add('pageURL')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tags;
    if (value != null) {
      result
        ..add('tags')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.previewURL;
    if (value != null) {
      result
        ..add('previewURL')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.previewWidth;
    if (value != null) {
      result
        ..add('previewWidth')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.previewHeight;
    if (value != null) {
      result
        ..add('previewHeight')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.webformatURL;
    if (value != null) {
      result
        ..add('webformatURL')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.webformatWidth;
    if (value != null) {
      result
        ..add('webformatWidth')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.webformatHeight;
    if (value != null) {
      result
        ..add('webformatHeight')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.largeImageURL;
    if (value != null) {
      result
        ..add('largeImageURL')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fullHDURL;
    if (value != null) {
      result
        ..add('fullHDURL')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.imageURL;
    if (value != null) {
      result
        ..add('imageURL')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.imageWidth;
    if (value != null) {
      result
        ..add('imageWidth')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.imageHeight;
    if (value != null) {
      result
        ..add('imageHeight')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.imageSize;
    if (value != null) {
      result
        ..add('imageSize')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.views;
    if (value != null) {
      result
        ..add('views')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.downloads;
    if (value != null) {
      result
        ..add('downloads')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.likes;
    if (value != null) {
      result
        ..add('likes')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.comments;
    if (value != null) {
      result
        ..add('comments')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.userId;
    if (value != null) {
      result
        ..add('user_id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userImageURL;
    if (value != null) {
      result
        ..add('userImageURL')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ImageModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ImageModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'pageURL':
          result.pageURL = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'tags':
          result.tags = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'previewURL':
          result.previewURL = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'previewWidth':
          result.previewWidth = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'previewHeight':
          result.previewHeight = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'webformatURL':
          result.webformatURL = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'webformatWidth':
          result.webformatWidth = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'webformatHeight':
          result.webformatHeight = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'largeImageURL':
          result.largeImageURL = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'fullHDURL':
          result.fullHDURL = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'imageURL':
          result.imageURL = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'imageWidth':
          result.imageWidth = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'imageHeight':
          result.imageHeight = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'imageSize':
          result.imageSize = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'views':
          result.views = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'downloads':
          result.downloads = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'likes':
          result.likes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'comments':
          result.comments = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'user_id':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'user':
          result.user = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'userImageURL':
          result.userImageURL = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$ImageModel extends ImageModel {
  @override
  final int? id;
  @override
  final String? pageURL;
  @override
  final String? type;
  @override
  final String? tags;
  @override
  final String? previewURL;
  @override
  final int? previewWidth;
  @override
  final int? previewHeight;
  @override
  final String? webformatURL;
  @override
  final int? webformatWidth;
  @override
  final int? webformatHeight;
  @override
  final String? largeImageURL;
  @override
  final String? fullHDURL;
  @override
  final String? imageURL;
  @override
  final int? imageWidth;
  @override
  final int? imageHeight;
  @override
  final int? imageSize;
  @override
  final int? views;
  @override
  final int? downloads;
  @override
  final int? likes;
  @override
  final int? comments;
  @override
  final int? userId;
  @override
  final String? user;
  @override
  final String? userImageURL;

  factory _$ImageModel([void Function(ImageModelBuilder)? updates]) =>
      (new ImageModelBuilder()..update(updates))._build();

  _$ImageModel._(
      {this.id,
      this.pageURL,
      this.type,
      this.tags,
      this.previewURL,
      this.previewWidth,
      this.previewHeight,
      this.webformatURL,
      this.webformatWidth,
      this.webformatHeight,
      this.largeImageURL,
      this.fullHDURL,
      this.imageURL,
      this.imageWidth,
      this.imageHeight,
      this.imageSize,
      this.views,
      this.downloads,
      this.likes,
      this.comments,
      this.userId,
      this.user,
      this.userImageURL})
      : super._();

  @override
  ImageModel rebuild(void Function(ImageModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImageModelBuilder toBuilder() => new ImageModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImageModel &&
        id == other.id &&
        pageURL == other.pageURL &&
        type == other.type &&
        tags == other.tags &&
        previewURL == other.previewURL &&
        previewWidth == other.previewWidth &&
        previewHeight == other.previewHeight &&
        webformatURL == other.webformatURL &&
        webformatWidth == other.webformatWidth &&
        webformatHeight == other.webformatHeight &&
        largeImageURL == other.largeImageURL &&
        fullHDURL == other.fullHDURL &&
        imageURL == other.imageURL &&
        imageWidth == other.imageWidth &&
        imageHeight == other.imageHeight &&
        imageSize == other.imageSize &&
        views == other.views &&
        downloads == other.downloads &&
        likes == other.likes &&
        comments == other.comments &&
        userId == other.userId &&
        user == other.user &&
        userImageURL == other.userImageURL;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, pageURL.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, previewURL.hashCode);
    _$hash = $jc(_$hash, previewWidth.hashCode);
    _$hash = $jc(_$hash, previewHeight.hashCode);
    _$hash = $jc(_$hash, webformatURL.hashCode);
    _$hash = $jc(_$hash, webformatWidth.hashCode);
    _$hash = $jc(_$hash, webformatHeight.hashCode);
    _$hash = $jc(_$hash, largeImageURL.hashCode);
    _$hash = $jc(_$hash, fullHDURL.hashCode);
    _$hash = $jc(_$hash, imageURL.hashCode);
    _$hash = $jc(_$hash, imageWidth.hashCode);
    _$hash = $jc(_$hash, imageHeight.hashCode);
    _$hash = $jc(_$hash, imageSize.hashCode);
    _$hash = $jc(_$hash, views.hashCode);
    _$hash = $jc(_$hash, downloads.hashCode);
    _$hash = $jc(_$hash, likes.hashCode);
    _$hash = $jc(_$hash, comments.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, userImageURL.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ImageModel')
          ..add('id', id)
          ..add('pageURL', pageURL)
          ..add('type', type)
          ..add('tags', tags)
          ..add('previewURL', previewURL)
          ..add('previewWidth', previewWidth)
          ..add('previewHeight', previewHeight)
          ..add('webformatURL', webformatURL)
          ..add('webformatWidth', webformatWidth)
          ..add('webformatHeight', webformatHeight)
          ..add('largeImageURL', largeImageURL)
          ..add('fullHDURL', fullHDURL)
          ..add('imageURL', imageURL)
          ..add('imageWidth', imageWidth)
          ..add('imageHeight', imageHeight)
          ..add('imageSize', imageSize)
          ..add('views', views)
          ..add('downloads', downloads)
          ..add('likes', likes)
          ..add('comments', comments)
          ..add('userId', userId)
          ..add('user', user)
          ..add('userImageURL', userImageURL))
        .toString();
  }
}

class ImageModelBuilder implements Builder<ImageModel, ImageModelBuilder> {
  _$ImageModel? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _pageURL;
  String? get pageURL => _$this._pageURL;
  set pageURL(String? pageURL) => _$this._pageURL = pageURL;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _tags;
  String? get tags => _$this._tags;
  set tags(String? tags) => _$this._tags = tags;

  String? _previewURL;
  String? get previewURL => _$this._previewURL;
  set previewURL(String? previewURL) => _$this._previewURL = previewURL;

  int? _previewWidth;
  int? get previewWidth => _$this._previewWidth;
  set previewWidth(int? previewWidth) => _$this._previewWidth = previewWidth;

  int? _previewHeight;
  int? get previewHeight => _$this._previewHeight;
  set previewHeight(int? previewHeight) =>
      _$this._previewHeight = previewHeight;

  String? _webformatURL;
  String? get webformatURL => _$this._webformatURL;
  set webformatURL(String? webformatURL) => _$this._webformatURL = webformatURL;

  int? _webformatWidth;
  int? get webformatWidth => _$this._webformatWidth;
  set webformatWidth(int? webformatWidth) =>
      _$this._webformatWidth = webformatWidth;

  int? _webformatHeight;
  int? get webformatHeight => _$this._webformatHeight;
  set webformatHeight(int? webformatHeight) =>
      _$this._webformatHeight = webformatHeight;

  String? _largeImageURL;
  String? get largeImageURL => _$this._largeImageURL;
  set largeImageURL(String? largeImageURL) =>
      _$this._largeImageURL = largeImageURL;

  String? _fullHDURL;
  String? get fullHDURL => _$this._fullHDURL;
  set fullHDURL(String? fullHDURL) => _$this._fullHDURL = fullHDURL;

  String? _imageURL;
  String? get imageURL => _$this._imageURL;
  set imageURL(String? imageURL) => _$this._imageURL = imageURL;

  int? _imageWidth;
  int? get imageWidth => _$this._imageWidth;
  set imageWidth(int? imageWidth) => _$this._imageWidth = imageWidth;

  int? _imageHeight;
  int? get imageHeight => _$this._imageHeight;
  set imageHeight(int? imageHeight) => _$this._imageHeight = imageHeight;

  int? _imageSize;
  int? get imageSize => _$this._imageSize;
  set imageSize(int? imageSize) => _$this._imageSize = imageSize;

  int? _views;
  int? get views => _$this._views;
  set views(int? views) => _$this._views = views;

  int? _downloads;
  int? get downloads => _$this._downloads;
  set downloads(int? downloads) => _$this._downloads = downloads;

  int? _likes;
  int? get likes => _$this._likes;
  set likes(int? likes) => _$this._likes = likes;

  int? _comments;
  int? get comments => _$this._comments;
  set comments(int? comments) => _$this._comments = comments;

  int? _userId;
  int? get userId => _$this._userId;
  set userId(int? userId) => _$this._userId = userId;

  String? _user;
  String? get user => _$this._user;
  set user(String? user) => _$this._user = user;

  String? _userImageURL;
  String? get userImageURL => _$this._userImageURL;
  set userImageURL(String? userImageURL) => _$this._userImageURL = userImageURL;

  ImageModelBuilder();

  ImageModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _pageURL = $v.pageURL;
      _type = $v.type;
      _tags = $v.tags;
      _previewURL = $v.previewURL;
      _previewWidth = $v.previewWidth;
      _previewHeight = $v.previewHeight;
      _webformatURL = $v.webformatURL;
      _webformatWidth = $v.webformatWidth;
      _webformatHeight = $v.webformatHeight;
      _largeImageURL = $v.largeImageURL;
      _fullHDURL = $v.fullHDURL;
      _imageURL = $v.imageURL;
      _imageWidth = $v.imageWidth;
      _imageHeight = $v.imageHeight;
      _imageSize = $v.imageSize;
      _views = $v.views;
      _downloads = $v.downloads;
      _likes = $v.likes;
      _comments = $v.comments;
      _userId = $v.userId;
      _user = $v.user;
      _userImageURL = $v.userImageURL;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImageModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ImageModel;
  }

  @override
  void update(void Function(ImageModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImageModel build() => _build();

  _$ImageModel _build() {
    final _$result = _$v ??
        new _$ImageModel._(
            id: id,
            pageURL: pageURL,
            type: type,
            tags: tags,
            previewURL: previewURL,
            previewWidth: previewWidth,
            previewHeight: previewHeight,
            webformatURL: webformatURL,
            webformatWidth: webformatWidth,
            webformatHeight: webformatHeight,
            largeImageURL: largeImageURL,
            fullHDURL: fullHDURL,
            imageURL: imageURL,
            imageWidth: imageWidth,
            imageHeight: imageHeight,
            imageSize: imageSize,
            views: views,
            downloads: downloads,
            likes: likes,
            comments: comments,
            userId: userId,
            user: user,
            userImageURL: userImageURL);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
