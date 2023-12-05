// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flash_card_category_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlashCardCategoryState _$FlashCardCategoryStateFromJson(
    Map<String, dynamic> json) {
  return _FlashCardCategoryState.fromJson(json);
}

/// @nodoc
mixin _$FlashCardCategoryState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<FlashCardCategoryModel> get categories =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FlashCardCategoryStateCopyWith<FlashCardCategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlashCardCategoryStateCopyWith<$Res> {
  factory $FlashCardCategoryStateCopyWith(FlashCardCategoryState value,
          $Res Function(FlashCardCategoryState) then) =
      _$FlashCardCategoryStateCopyWithImpl<$Res, FlashCardCategoryState>;
  @useResult
  $Res call({bool isLoading, List<FlashCardCategoryModel> categories});
}

/// @nodoc
class _$FlashCardCategoryStateCopyWithImpl<$Res,
        $Val extends FlashCardCategoryState>
    implements $FlashCardCategoryStateCopyWith<$Res> {
  _$FlashCardCategoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? categories = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<FlashCardCategoryModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FlashCardCategoryStateImplCopyWith<$Res>
    implements $FlashCardCategoryStateCopyWith<$Res> {
  factory _$$FlashCardCategoryStateImplCopyWith(
          _$FlashCardCategoryStateImpl value,
          $Res Function(_$FlashCardCategoryStateImpl) then) =
      __$$FlashCardCategoryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<FlashCardCategoryModel> categories});
}

/// @nodoc
class __$$FlashCardCategoryStateImplCopyWithImpl<$Res>
    extends _$FlashCardCategoryStateCopyWithImpl<$Res,
        _$FlashCardCategoryStateImpl>
    implements _$$FlashCardCategoryStateImplCopyWith<$Res> {
  __$$FlashCardCategoryStateImplCopyWithImpl(
      _$FlashCardCategoryStateImpl _value,
      $Res Function(_$FlashCardCategoryStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? categories = null,
  }) {
    return _then(_$FlashCardCategoryStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<FlashCardCategoryModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FlashCardCategoryStateImpl implements _FlashCardCategoryState {
  const _$FlashCardCategoryStateImpl(
      {this.isLoading = false,
      final List<FlashCardCategoryModel> categories = const []})
      : _categories = categories;

  factory _$FlashCardCategoryStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$FlashCardCategoryStateImplFromJson(json);

  @override
  @JsonKey()
  final bool isLoading;
  final List<FlashCardCategoryModel> _categories;
  @override
  @JsonKey()
  List<FlashCardCategoryModel> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'FlashCardCategoryState(isLoading: $isLoading, categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlashCardCategoryStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, const DeepCollectionEquality().hash(_categories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FlashCardCategoryStateImplCopyWith<_$FlashCardCategoryStateImpl>
      get copyWith => __$$FlashCardCategoryStateImplCopyWithImpl<
          _$FlashCardCategoryStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FlashCardCategoryStateImplToJson(
      this,
    );
  }
}

abstract class _FlashCardCategoryState implements FlashCardCategoryState {
  const factory _FlashCardCategoryState(
          {final bool isLoading,
          final List<FlashCardCategoryModel> categories}) =
      _$FlashCardCategoryStateImpl;

  factory _FlashCardCategoryState.fromJson(Map<String, dynamic> json) =
      _$FlashCardCategoryStateImpl.fromJson;

  @override
  bool get isLoading;
  @override
  List<FlashCardCategoryModel> get categories;
  @override
  @JsonKey(ignore: true)
  _$$FlashCardCategoryStateImplCopyWith<_$FlashCardCategoryStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
