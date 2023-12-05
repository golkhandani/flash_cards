// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flash_card_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlashCardListState _$FlashCardListStateFromJson(Map<String, dynamic> json) {
  return _FlashCardListState.fromJson(json);
}

/// @nodoc
mixin _$FlashCardListState {
  String? get categoryId => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  List<FlashCardModel> get flashCards => throw _privateConstructorUsedError;
  int get initialIndex => throw _privateConstructorUsedError;
  int get currentIndex => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FlashCardListStateCopyWith<FlashCardListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlashCardListStateCopyWith<$Res> {
  factory $FlashCardListStateCopyWith(
          FlashCardListState value, $Res Function(FlashCardListState) then) =
      _$FlashCardListStateCopyWithImpl<$Res, FlashCardListState>;
  @useResult
  $Res call(
      {String? categoryId,
      bool isLoading,
      List<FlashCardModel> flashCards,
      int initialIndex,
      int currentIndex});
}

/// @nodoc
class _$FlashCardListStateCopyWithImpl<$Res, $Val extends FlashCardListState>
    implements $FlashCardListStateCopyWith<$Res> {
  _$FlashCardListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = freezed,
    Object? isLoading = null,
    Object? flashCards = null,
    Object? initialIndex = null,
    Object? currentIndex = null,
  }) {
    return _then(_value.copyWith(
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      flashCards: null == flashCards
          ? _value.flashCards
          : flashCards // ignore: cast_nullable_to_non_nullable
              as List<FlashCardModel>,
      initialIndex: null == initialIndex
          ? _value.initialIndex
          : initialIndex // ignore: cast_nullable_to_non_nullable
              as int,
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FlashCardListStateImplCopyWith<$Res>
    implements $FlashCardListStateCopyWith<$Res> {
  factory _$$FlashCardListStateImplCopyWith(_$FlashCardListStateImpl value,
          $Res Function(_$FlashCardListStateImpl) then) =
      __$$FlashCardListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? categoryId,
      bool isLoading,
      List<FlashCardModel> flashCards,
      int initialIndex,
      int currentIndex});
}

/// @nodoc
class __$$FlashCardListStateImplCopyWithImpl<$Res>
    extends _$FlashCardListStateCopyWithImpl<$Res, _$FlashCardListStateImpl>
    implements _$$FlashCardListStateImplCopyWith<$Res> {
  __$$FlashCardListStateImplCopyWithImpl(_$FlashCardListStateImpl _value,
      $Res Function(_$FlashCardListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = freezed,
    Object? isLoading = null,
    Object? flashCards = null,
    Object? initialIndex = null,
    Object? currentIndex = null,
  }) {
    return _then(_$FlashCardListStateImpl(
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      flashCards: null == flashCards
          ? _value._flashCards
          : flashCards // ignore: cast_nullable_to_non_nullable
              as List<FlashCardModel>,
      initialIndex: null == initialIndex
          ? _value.initialIndex
          : initialIndex // ignore: cast_nullable_to_non_nullable
              as int,
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FlashCardListStateImpl implements _FlashCardListState {
  const _$FlashCardListStateImpl(
      {this.categoryId,
      this.isLoading = false,
      final List<FlashCardModel> flashCards = const [],
      this.initialIndex = 0,
      this.currentIndex = 0})
      : _flashCards = flashCards;

  factory _$FlashCardListStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$FlashCardListStateImplFromJson(json);

  @override
  final String? categoryId;
  @override
  @JsonKey()
  final bool isLoading;
  final List<FlashCardModel> _flashCards;
  @override
  @JsonKey()
  List<FlashCardModel> get flashCards {
    if (_flashCards is EqualUnmodifiableListView) return _flashCards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_flashCards);
  }

  @override
  @JsonKey()
  final int initialIndex;
  @override
  @JsonKey()
  final int currentIndex;

  @override
  String toString() {
    return 'FlashCardListState(categoryId: $categoryId, isLoading: $isLoading, flashCards: $flashCards, initialIndex: $initialIndex, currentIndex: $currentIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlashCardListStateImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._flashCards, _flashCards) &&
            (identical(other.initialIndex, initialIndex) ||
                other.initialIndex == initialIndex) &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      categoryId,
      isLoading,
      const DeepCollectionEquality().hash(_flashCards),
      initialIndex,
      currentIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FlashCardListStateImplCopyWith<_$FlashCardListStateImpl> get copyWith =>
      __$$FlashCardListStateImplCopyWithImpl<_$FlashCardListStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FlashCardListStateImplToJson(
      this,
    );
  }
}

abstract class _FlashCardListState implements FlashCardListState {
  const factory _FlashCardListState(
      {final String? categoryId,
      final bool isLoading,
      final List<FlashCardModel> flashCards,
      final int initialIndex,
      final int currentIndex}) = _$FlashCardListStateImpl;

  factory _FlashCardListState.fromJson(Map<String, dynamic> json) =
      _$FlashCardListStateImpl.fromJson;

  @override
  String? get categoryId;
  @override
  bool get isLoading;
  @override
  List<FlashCardModel> get flashCards;
  @override
  int get initialIndex;
  @override
  int get currentIndex;
  @override
  @JsonKey(ignore: true)
  _$$FlashCardListStateImplCopyWith<_$FlashCardListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
