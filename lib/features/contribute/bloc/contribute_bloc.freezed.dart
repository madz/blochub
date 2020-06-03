// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'contribute_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ContributeEventTearOff {
  const _$ContributeEventTearOff();

  ContributeEventLoadImage loadImage() {
    return const ContributeEventLoadImage();
  }

  ContributeEventUploadImage uploadImage(PickedFile image) {
    return ContributeEventUploadImage(
      image,
    );
  }

  ContributeEventPublish publish() {
    return const ContributeEventPublish();
  }
}

// ignore: unused_element
const $ContributeEvent = _$ContributeEventTearOff();

mixin _$ContributeEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loadImage(),
    @required Result uploadImage(PickedFile image),
    @required Result publish(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadImage(),
    Result uploadImage(PickedFile image),
    Result publish(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loadImage(ContributeEventLoadImage value),
    @required Result uploadImage(ContributeEventUploadImage value),
    @required Result publish(ContributeEventPublish value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loadImage(ContributeEventLoadImage value),
    Result uploadImage(ContributeEventUploadImage value),
    Result publish(ContributeEventPublish value),
    @required Result orElse(),
  });
}

abstract class $ContributeEventCopyWith<$Res> {
  factory $ContributeEventCopyWith(
          ContributeEvent value, $Res Function(ContributeEvent) then) =
      _$ContributeEventCopyWithImpl<$Res>;
}

class _$ContributeEventCopyWithImpl<$Res>
    implements $ContributeEventCopyWith<$Res> {
  _$ContributeEventCopyWithImpl(this._value, this._then);

  final ContributeEvent _value;
  // ignore: unused_field
  final $Res Function(ContributeEvent) _then;
}

abstract class $ContributeEventLoadImageCopyWith<$Res> {
  factory $ContributeEventLoadImageCopyWith(ContributeEventLoadImage value,
          $Res Function(ContributeEventLoadImage) then) =
      _$ContributeEventLoadImageCopyWithImpl<$Res>;
}

class _$ContributeEventLoadImageCopyWithImpl<$Res>
    extends _$ContributeEventCopyWithImpl<$Res>
    implements $ContributeEventLoadImageCopyWith<$Res> {
  _$ContributeEventLoadImageCopyWithImpl(ContributeEventLoadImage _value,
      $Res Function(ContributeEventLoadImage) _then)
      : super(_value, (v) => _then(v as ContributeEventLoadImage));

  @override
  ContributeEventLoadImage get _value =>
      super._value as ContributeEventLoadImage;
}

class _$ContributeEventLoadImage implements ContributeEventLoadImage {
  const _$ContributeEventLoadImage();

  @override
  String toString() {
    return 'ContributeEvent.loadImage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ContributeEventLoadImage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loadImage(),
    @required Result uploadImage(PickedFile image),
    @required Result publish(),
  }) {
    assert(loadImage != null);
    assert(uploadImage != null);
    assert(publish != null);
    return loadImage();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadImage(),
    Result uploadImage(PickedFile image),
    Result publish(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadImage != null) {
      return loadImage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loadImage(ContributeEventLoadImage value),
    @required Result uploadImage(ContributeEventUploadImage value),
    @required Result publish(ContributeEventPublish value),
  }) {
    assert(loadImage != null);
    assert(uploadImage != null);
    assert(publish != null);
    return loadImage(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loadImage(ContributeEventLoadImage value),
    Result uploadImage(ContributeEventUploadImage value),
    Result publish(ContributeEventPublish value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadImage != null) {
      return loadImage(this);
    }
    return orElse();
  }
}

abstract class ContributeEventLoadImage implements ContributeEvent {
  const factory ContributeEventLoadImage() = _$ContributeEventLoadImage;
}

abstract class $ContributeEventUploadImageCopyWith<$Res> {
  factory $ContributeEventUploadImageCopyWith(ContributeEventUploadImage value,
          $Res Function(ContributeEventUploadImage) then) =
      _$ContributeEventUploadImageCopyWithImpl<$Res>;
  $Res call({PickedFile image});
}

class _$ContributeEventUploadImageCopyWithImpl<$Res>
    extends _$ContributeEventCopyWithImpl<$Res>
    implements $ContributeEventUploadImageCopyWith<$Res> {
  _$ContributeEventUploadImageCopyWithImpl(ContributeEventUploadImage _value,
      $Res Function(ContributeEventUploadImage) _then)
      : super(_value, (v) => _then(v as ContributeEventUploadImage));

  @override
  ContributeEventUploadImage get _value =>
      super._value as ContributeEventUploadImage;

  @override
  $Res call({
    Object image = freezed,
  }) {
    return _then(ContributeEventUploadImage(
      image == freezed ? _value.image : image as PickedFile,
    ));
  }
}

class _$ContributeEventUploadImage implements ContributeEventUploadImage {
  const _$ContributeEventUploadImage(this.image) : assert(image != null);

  @override
  final PickedFile image;

  @override
  String toString() {
    return 'ContributeEvent.uploadImage(image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ContributeEventUploadImage &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(image);

  @override
  $ContributeEventUploadImageCopyWith<ContributeEventUploadImage>
      get copyWith =>
          _$ContributeEventUploadImageCopyWithImpl<ContributeEventUploadImage>(
              this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loadImage(),
    @required Result uploadImage(PickedFile image),
    @required Result publish(),
  }) {
    assert(loadImage != null);
    assert(uploadImage != null);
    assert(publish != null);
    return uploadImage(image);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadImage(),
    Result uploadImage(PickedFile image),
    Result publish(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (uploadImage != null) {
      return uploadImage(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loadImage(ContributeEventLoadImage value),
    @required Result uploadImage(ContributeEventUploadImage value),
    @required Result publish(ContributeEventPublish value),
  }) {
    assert(loadImage != null);
    assert(uploadImage != null);
    assert(publish != null);
    return uploadImage(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loadImage(ContributeEventLoadImage value),
    Result uploadImage(ContributeEventUploadImage value),
    Result publish(ContributeEventPublish value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (uploadImage != null) {
      return uploadImage(this);
    }
    return orElse();
  }
}

abstract class ContributeEventUploadImage implements ContributeEvent {
  const factory ContributeEventUploadImage(PickedFile image) =
      _$ContributeEventUploadImage;

  PickedFile get image;
  $ContributeEventUploadImageCopyWith<ContributeEventUploadImage> get copyWith;
}

abstract class $ContributeEventPublishCopyWith<$Res> {
  factory $ContributeEventPublishCopyWith(ContributeEventPublish value,
          $Res Function(ContributeEventPublish) then) =
      _$ContributeEventPublishCopyWithImpl<$Res>;
}

class _$ContributeEventPublishCopyWithImpl<$Res>
    extends _$ContributeEventCopyWithImpl<$Res>
    implements $ContributeEventPublishCopyWith<$Res> {
  _$ContributeEventPublishCopyWithImpl(ContributeEventPublish _value,
      $Res Function(ContributeEventPublish) _then)
      : super(_value, (v) => _then(v as ContributeEventPublish));

  @override
  ContributeEventPublish get _value => super._value as ContributeEventPublish;
}

class _$ContributeEventPublish implements ContributeEventPublish {
  const _$ContributeEventPublish();

  @override
  String toString() {
    return 'ContributeEvent.publish()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ContributeEventPublish);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loadImage(),
    @required Result uploadImage(PickedFile image),
    @required Result publish(),
  }) {
    assert(loadImage != null);
    assert(uploadImage != null);
    assert(publish != null);
    return publish();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadImage(),
    Result uploadImage(PickedFile image),
    Result publish(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (publish != null) {
      return publish();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loadImage(ContributeEventLoadImage value),
    @required Result uploadImage(ContributeEventUploadImage value),
    @required Result publish(ContributeEventPublish value),
  }) {
    assert(loadImage != null);
    assert(uploadImage != null);
    assert(publish != null);
    return publish(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loadImage(ContributeEventLoadImage value),
    Result uploadImage(ContributeEventUploadImage value),
    Result publish(ContributeEventPublish value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (publish != null) {
      return publish(this);
    }
    return orElse();
  }
}

abstract class ContributeEventPublish implements ContributeEvent {
  const factory ContributeEventPublish() = _$ContributeEventPublish;
}

class _$ContributeStateTearOff {
  const _$ContributeStateTearOff();

  Contribute call(
      {@nullable PickedFile image,
      @required bool isUploading,
      @required bool isSuccess,
      @required bool isFailure,
      @required String info}) {
    return Contribute(
      image: image,
      isUploading: isUploading,
      isSuccess: isSuccess,
      isFailure: isFailure,
      info: info,
    );
  }
}

// ignore: unused_element
const $ContributeState = _$ContributeStateTearOff();

mixin _$ContributeState {
  @nullable
  PickedFile get image;
  bool get isUploading;
  bool get isSuccess;
  bool get isFailure;
  String get info;

  $ContributeStateCopyWith<ContributeState> get copyWith;
}

abstract class $ContributeStateCopyWith<$Res> {
  factory $ContributeStateCopyWith(
          ContributeState value, $Res Function(ContributeState) then) =
      _$ContributeStateCopyWithImpl<$Res>;
  $Res call(
      {@nullable PickedFile image,
      bool isUploading,
      bool isSuccess,
      bool isFailure,
      String info});
}

class _$ContributeStateCopyWithImpl<$Res>
    implements $ContributeStateCopyWith<$Res> {
  _$ContributeStateCopyWithImpl(this._value, this._then);

  final ContributeState _value;
  // ignore: unused_field
  final $Res Function(ContributeState) _then;

  @override
  $Res call({
    Object image = freezed,
    Object isUploading = freezed,
    Object isSuccess = freezed,
    Object isFailure = freezed,
    Object info = freezed,
  }) {
    return _then(_value.copyWith(
      image: image == freezed ? _value.image : image as PickedFile,
      isUploading:
          isUploading == freezed ? _value.isUploading : isUploading as bool,
      isSuccess: isSuccess == freezed ? _value.isSuccess : isSuccess as bool,
      isFailure: isFailure == freezed ? _value.isFailure : isFailure as bool,
      info: info == freezed ? _value.info : info as String,
    ));
  }
}

abstract class $ContributeCopyWith<$Res>
    implements $ContributeStateCopyWith<$Res> {
  factory $ContributeCopyWith(
          Contribute value, $Res Function(Contribute) then) =
      _$ContributeCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable PickedFile image,
      bool isUploading,
      bool isSuccess,
      bool isFailure,
      String info});
}

class _$ContributeCopyWithImpl<$Res> extends _$ContributeStateCopyWithImpl<$Res>
    implements $ContributeCopyWith<$Res> {
  _$ContributeCopyWithImpl(Contribute _value, $Res Function(Contribute) _then)
      : super(_value, (v) => _then(v as Contribute));

  @override
  Contribute get _value => super._value as Contribute;

  @override
  $Res call({
    Object image = freezed,
    Object isUploading = freezed,
    Object isSuccess = freezed,
    Object isFailure = freezed,
    Object info = freezed,
  }) {
    return _then(Contribute(
      image: image == freezed ? _value.image : image as PickedFile,
      isUploading:
          isUploading == freezed ? _value.isUploading : isUploading as bool,
      isSuccess: isSuccess == freezed ? _value.isSuccess : isSuccess as bool,
      isFailure: isFailure == freezed ? _value.isFailure : isFailure as bool,
      info: info == freezed ? _value.info : info as String,
    ));
  }
}

class _$Contribute extends Contribute {
  const _$Contribute(
      {@nullable this.image,
      @required this.isUploading,
      @required this.isSuccess,
      @required this.isFailure,
      @required this.info})
      : assert(isUploading != null),
        assert(isSuccess != null),
        assert(isFailure != null),
        assert(info != null),
        super._();

  @override
  @nullable
  final PickedFile image;
  @override
  final bool isUploading;
  @override
  final bool isSuccess;
  @override
  final bool isFailure;
  @override
  final String info;

  @override
  String toString() {
    return 'ContributeState(image: $image, isUploading: $isUploading, isSuccess: $isSuccess, isFailure: $isFailure, info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Contribute &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.isUploading, isUploading) ||
                const DeepCollectionEquality()
                    .equals(other.isUploading, isUploading)) &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.isSuccess, isSuccess)) &&
            (identical(other.isFailure, isFailure) ||
                const DeepCollectionEquality()
                    .equals(other.isFailure, isFailure)) &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(isUploading) ^
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(isFailure) ^
      const DeepCollectionEquality().hash(info);

  @override
  $ContributeCopyWith<Contribute> get copyWith =>
      _$ContributeCopyWithImpl<Contribute>(this, _$identity);
}

abstract class Contribute extends ContributeState {
  const Contribute._() : super._();
  const factory Contribute(
      {@nullable PickedFile image,
      @required bool isUploading,
      @required bool isSuccess,
      @required bool isFailure,
      @required String info}) = _$Contribute;

  @override
  @nullable
  PickedFile get image;
  @override
  bool get isUploading;
  @override
  bool get isSuccess;
  @override
  bool get isFailure;
  @override
  String get info;
  @override
  $ContributeCopyWith<Contribute> get copyWith;
}
