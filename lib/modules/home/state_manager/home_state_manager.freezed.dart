// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state_manager.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomeState _$HomeStateFromJson(Map<String, dynamic> json) {
  return _HomeState.fromJson(json);
}

/// @nodoc
mixin _$HomeState {
  LessonData? get flashCardCategory => throw _privateConstructorUsedError;
  List<FlashCardData>? get flashCards => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {LessonData? flashCardCategory,
      List<FlashCardData>? flashCards,
      bool isLoading});

  $LessonDataCopyWith<$Res>? get flashCardCategory;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flashCardCategory = freezed,
    Object? flashCards = freezed,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      flashCardCategory: freezed == flashCardCategory
          ? _value.flashCardCategory
          : flashCardCategory // ignore: cast_nullable_to_non_nullable
              as LessonData?,
      flashCards: freezed == flashCards
          ? _value.flashCards
          : flashCards // ignore: cast_nullable_to_non_nullable
              as List<FlashCardData>?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LessonDataCopyWith<$Res>? get flashCardCategory {
    if (_value.flashCardCategory == null) {
      return null;
    }

    return $LessonDataCopyWith<$Res>(_value.flashCardCategory!, (value) {
      return _then(_value.copyWith(flashCardCategory: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LessonData? flashCardCategory,
      List<FlashCardData>? flashCards,
      bool isLoading});

  @override
  $LessonDataCopyWith<$Res>? get flashCardCategory;
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flashCardCategory = freezed,
    Object? flashCards = freezed,
    Object? isLoading = null,
  }) {
    return _then(_$HomeStateImpl(
      flashCardCategory: freezed == flashCardCategory
          ? _value.flashCardCategory
          : flashCardCategory // ignore: cast_nullable_to_non_nullable
              as LessonData?,
      flashCards: freezed == flashCards
          ? _value._flashCards
          : flashCards // ignore: cast_nullable_to_non_nullable
              as List<FlashCardData>?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {this.flashCardCategory,
      final List<FlashCardData>? flashCards,
      this.isLoading = false})
      : _flashCards = flashCards;

  factory _$HomeStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeStateImplFromJson(json);

  @override
  final LessonData? flashCardCategory;
  final List<FlashCardData>? _flashCards;
  @override
  List<FlashCardData>? get flashCards {
    final value = _flashCards;
    if (value == null) return null;
    if (_flashCards is EqualUnmodifiableListView) return _flashCards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'HomeState(flashCardCategory: $flashCardCategory, flashCards: $flashCards, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.flashCardCategory, flashCardCategory) ||
                other.flashCardCategory == flashCardCategory) &&
            const DeepCollectionEquality()
                .equals(other._flashCards, _flashCards) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, flashCardCategory,
      const DeepCollectionEquality().hash(_flashCards), isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeStateImplToJson(
      this,
    );
  }
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {final LessonData? flashCardCategory,
      final List<FlashCardData>? flashCards,
      final bool isLoading}) = _$HomeStateImpl;

  factory _HomeState.fromJson(Map<String, dynamic> json) =
      _$HomeStateImpl.fromJson;

  @override
  LessonData? get flashCardCategory;
  @override
  List<FlashCardData>? get flashCards;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
