// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flash_card_category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlashCardCategoryModel _$FlashCardCategoryModelFromJson(
    Map<String, dynamic> json) {
  return _FlashCardCategoryModel.fromJson(json);
}

/// @nodoc
mixin _$FlashCardCategoryModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get information => throw _privateConstructorUsedError;
  bool get isRecent => throw _privateConstructorUsedError;
  int get lastCardIndex => throw _privateConstructorUsedError;
  DateTime get lastUpdate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FlashCardCategoryModelCopyWith<FlashCardCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlashCardCategoryModelCopyWith<$Res> {
  factory $FlashCardCategoryModelCopyWith(FlashCardCategoryModel value,
          $Res Function(FlashCardCategoryModel) then) =
      _$FlashCardCategoryModelCopyWithImpl<$Res, FlashCardCategoryModel>;
  @useResult
  $Res call(
      {String id,
      String title,
      String information,
      bool isRecent,
      int lastCardIndex,
      DateTime lastUpdate});
}

/// @nodoc
class _$FlashCardCategoryModelCopyWithImpl<$Res,
        $Val extends FlashCardCategoryModel>
    implements $FlashCardCategoryModelCopyWith<$Res> {
  _$FlashCardCategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? information = null,
    Object? isRecent = null,
    Object? lastCardIndex = null,
    Object? lastUpdate = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      information: null == information
          ? _value.information
          : information // ignore: cast_nullable_to_non_nullable
              as String,
      isRecent: null == isRecent
          ? _value.isRecent
          : isRecent // ignore: cast_nullable_to_non_nullable
              as bool,
      lastCardIndex: null == lastCardIndex
          ? _value.lastCardIndex
          : lastCardIndex // ignore: cast_nullable_to_non_nullable
              as int,
      lastUpdate: null == lastUpdate
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FlashCardCategoryModelImplCopyWith<$Res>
    implements $FlashCardCategoryModelCopyWith<$Res> {
  factory _$$FlashCardCategoryModelImplCopyWith(
          _$FlashCardCategoryModelImpl value,
          $Res Function(_$FlashCardCategoryModelImpl) then) =
      __$$FlashCardCategoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String information,
      bool isRecent,
      int lastCardIndex,
      DateTime lastUpdate});
}

/// @nodoc
class __$$FlashCardCategoryModelImplCopyWithImpl<$Res>
    extends _$FlashCardCategoryModelCopyWithImpl<$Res,
        _$FlashCardCategoryModelImpl>
    implements _$$FlashCardCategoryModelImplCopyWith<$Res> {
  __$$FlashCardCategoryModelImplCopyWithImpl(
      _$FlashCardCategoryModelImpl _value,
      $Res Function(_$FlashCardCategoryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? information = null,
    Object? isRecent = null,
    Object? lastCardIndex = null,
    Object? lastUpdate = null,
  }) {
    return _then(_$FlashCardCategoryModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      information: null == information
          ? _value.information
          : information // ignore: cast_nullable_to_non_nullable
              as String,
      isRecent: null == isRecent
          ? _value.isRecent
          : isRecent // ignore: cast_nullable_to_non_nullable
              as bool,
      lastCardIndex: null == lastCardIndex
          ? _value.lastCardIndex
          : lastCardIndex // ignore: cast_nullable_to_non_nullable
              as int,
      lastUpdate: null == lastUpdate
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FlashCardCategoryModelImpl implements _FlashCardCategoryModel {
  const _$FlashCardCategoryModelImpl(
      {required this.id,
      required this.title,
      required this.information,
      required this.isRecent,
      required this.lastCardIndex,
      required this.lastUpdate});

  factory _$FlashCardCategoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FlashCardCategoryModelImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String information;
  @override
  final bool isRecent;
  @override
  final int lastCardIndex;
  @override
  final DateTime lastUpdate;

  @override
  String toString() {
    return 'FlashCardCategoryModel(id: $id, title: $title, information: $information, isRecent: $isRecent, lastCardIndex: $lastCardIndex, lastUpdate: $lastUpdate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlashCardCategoryModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.information, information) ||
                other.information == information) &&
            (identical(other.isRecent, isRecent) ||
                other.isRecent == isRecent) &&
            (identical(other.lastCardIndex, lastCardIndex) ||
                other.lastCardIndex == lastCardIndex) &&
            (identical(other.lastUpdate, lastUpdate) ||
                other.lastUpdate == lastUpdate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, information, isRecent, lastCardIndex, lastUpdate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FlashCardCategoryModelImplCopyWith<_$FlashCardCategoryModelImpl>
      get copyWith => __$$FlashCardCategoryModelImplCopyWithImpl<
          _$FlashCardCategoryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FlashCardCategoryModelImplToJson(
      this,
    );
  }
}

abstract class _FlashCardCategoryModel implements FlashCardCategoryModel {
  const factory _FlashCardCategoryModel(
      {required final String id,
      required final String title,
      required final String information,
      required final bool isRecent,
      required final int lastCardIndex,
      required final DateTime lastUpdate}) = _$FlashCardCategoryModelImpl;

  factory _FlashCardCategoryModel.fromJson(Map<String, dynamic> json) =
      _$FlashCardCategoryModelImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get information;
  @override
  bool get isRecent;
  @override
  int get lastCardIndex;
  @override
  DateTime get lastUpdate;
  @override
  @JsonKey(ignore: true)
  _$$FlashCardCategoryModelImplCopyWith<_$FlashCardCategoryModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
