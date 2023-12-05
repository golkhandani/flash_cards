// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flash_card_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlashCardModel _$FlashCardModelFromJson(Map<String, dynamic> json) {
  return _FlashCardModel.fromJson(json);
}

/// @nodoc
mixin _$FlashCardModel {
  String get id => throw _privateConstructorUsedError;
  String get frontText => throw _privateConstructorUsedError;
  String get backText => throw _privateConstructorUsedError; // statics
  String get information => throw _privateConstructorUsedError;
  String get categoryId => throw _privateConstructorUsedError;
  FlashCardStatus get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FlashCardModelCopyWith<FlashCardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlashCardModelCopyWith<$Res> {
  factory $FlashCardModelCopyWith(
          FlashCardModel value, $Res Function(FlashCardModel) then) =
      _$FlashCardModelCopyWithImpl<$Res, FlashCardModel>;
  @useResult
  $Res call(
      {String id,
      String frontText,
      String backText,
      String information,
      String categoryId,
      FlashCardStatus status});
}

/// @nodoc
class _$FlashCardModelCopyWithImpl<$Res, $Val extends FlashCardModel>
    implements $FlashCardModelCopyWith<$Res> {
  _$FlashCardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? frontText = null,
    Object? backText = null,
    Object? information = null,
    Object? categoryId = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      frontText: null == frontText
          ? _value.frontText
          : frontText // ignore: cast_nullable_to_non_nullable
              as String,
      backText: null == backText
          ? _value.backText
          : backText // ignore: cast_nullable_to_non_nullable
              as String,
      information: null == information
          ? _value.information
          : information // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FlashCardStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FlashCardModelImplCopyWith<$Res>
    implements $FlashCardModelCopyWith<$Res> {
  factory _$$FlashCardModelImplCopyWith(_$FlashCardModelImpl value,
          $Res Function(_$FlashCardModelImpl) then) =
      __$$FlashCardModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String frontText,
      String backText,
      String information,
      String categoryId,
      FlashCardStatus status});
}

/// @nodoc
class __$$FlashCardModelImplCopyWithImpl<$Res>
    extends _$FlashCardModelCopyWithImpl<$Res, _$FlashCardModelImpl>
    implements _$$FlashCardModelImplCopyWith<$Res> {
  __$$FlashCardModelImplCopyWithImpl(
      _$FlashCardModelImpl _value, $Res Function(_$FlashCardModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? frontText = null,
    Object? backText = null,
    Object? information = null,
    Object? categoryId = null,
    Object? status = null,
  }) {
    return _then(_$FlashCardModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      frontText: null == frontText
          ? _value.frontText
          : frontText // ignore: cast_nullable_to_non_nullable
              as String,
      backText: null == backText
          ? _value.backText
          : backText // ignore: cast_nullable_to_non_nullable
              as String,
      information: null == information
          ? _value.information
          : information // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FlashCardStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FlashCardModelImpl implements _FlashCardModel {
  const _$FlashCardModelImpl(
      {required this.id,
      required this.frontText,
      required this.backText,
      required this.information,
      required this.categoryId,
      this.status = FlashCardStatus.unknown});

  factory _$FlashCardModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FlashCardModelImplFromJson(json);

  @override
  final String id;
  @override
  final String frontText;
  @override
  final String backText;
// statics
  @override
  final String information;
  @override
  final String categoryId;
  @override
  @JsonKey()
  final FlashCardStatus status;

  @override
  String toString() {
    return 'FlashCardModel(id: $id, frontText: $frontText, backText: $backText, information: $information, categoryId: $categoryId, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlashCardModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.frontText, frontText) ||
                other.frontText == frontText) &&
            (identical(other.backText, backText) ||
                other.backText == backText) &&
            (identical(other.information, information) ||
                other.information == information) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, frontText, backText, information, categoryId, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FlashCardModelImplCopyWith<_$FlashCardModelImpl> get copyWith =>
      __$$FlashCardModelImplCopyWithImpl<_$FlashCardModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FlashCardModelImplToJson(
      this,
    );
  }
}

abstract class _FlashCardModel implements FlashCardModel {
  const factory _FlashCardModel(
      {required final String id,
      required final String frontText,
      required final String backText,
      required final String information,
      required final String categoryId,
      final FlashCardStatus status}) = _$FlashCardModelImpl;

  factory _FlashCardModel.fromJson(Map<String, dynamic> json) =
      _$FlashCardModelImpl.fromJson;

  @override
  String get id;
  @override
  String get frontText;
  @override
  String get backText;
  @override // statics
  String get information;
  @override
  String get categoryId;
  @override
  FlashCardStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$FlashCardModelImplCopyWith<_$FlashCardModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
