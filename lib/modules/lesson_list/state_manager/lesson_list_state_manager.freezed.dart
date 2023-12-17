// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lesson_list_state_manager.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LessonListState _$LessonListStateFromJson(Map<String, dynamic> json) {
  return _LessonListState.fromJson(json);
}

/// @nodoc
mixin _$LessonListState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<LessonData> get allCategories => throw _privateConstructorUsedError;
  List<LessonData> get filteredCategories => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LessonListStateCopyWith<LessonListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonListStateCopyWith<$Res> {
  factory $LessonListStateCopyWith(
          LessonListState value, $Res Function(LessonListState) then) =
      _$LessonListStateCopyWithImpl<$Res, LessonListState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<LessonData> allCategories,
      List<LessonData> filteredCategories});
}

/// @nodoc
class _$LessonListStateCopyWithImpl<$Res, $Val extends LessonListState>
    implements $LessonListStateCopyWith<$Res> {
  _$LessonListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? allCategories = null,
    Object? filteredCategories = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      allCategories: null == allCategories
          ? _value.allCategories
          : allCategories // ignore: cast_nullable_to_non_nullable
              as List<LessonData>,
      filteredCategories: null == filteredCategories
          ? _value.filteredCategories
          : filteredCategories // ignore: cast_nullable_to_non_nullable
              as List<LessonData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LessonListStateImplCopyWith<$Res>
    implements $LessonListStateCopyWith<$Res> {
  factory _$$LessonListStateImplCopyWith(_$LessonListStateImpl value,
          $Res Function(_$LessonListStateImpl) then) =
      __$$LessonListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<LessonData> allCategories,
      List<LessonData> filteredCategories});
}

/// @nodoc
class __$$LessonListStateImplCopyWithImpl<$Res>
    extends _$LessonListStateCopyWithImpl<$Res, _$LessonListStateImpl>
    implements _$$LessonListStateImplCopyWith<$Res> {
  __$$LessonListStateImplCopyWithImpl(
      _$LessonListStateImpl _value, $Res Function(_$LessonListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? allCategories = null,
    Object? filteredCategories = null,
  }) {
    return _then(_$LessonListStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      allCategories: null == allCategories
          ? _value._allCategories
          : allCategories // ignore: cast_nullable_to_non_nullable
              as List<LessonData>,
      filteredCategories: null == filteredCategories
          ? _value._filteredCategories
          : filteredCategories // ignore: cast_nullable_to_non_nullable
              as List<LessonData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LessonListStateImpl implements _LessonListState {
  const _$LessonListStateImpl(
      {this.isLoading = false,
      final List<LessonData> allCategories = const [],
      final List<LessonData> filteredCategories = const []})
      : _allCategories = allCategories,
        _filteredCategories = filteredCategories;

  factory _$LessonListStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$LessonListStateImplFromJson(json);

  @override
  @JsonKey()
  final bool isLoading;
  final List<LessonData> _allCategories;
  @override
  @JsonKey()
  List<LessonData> get allCategories {
    if (_allCategories is EqualUnmodifiableListView) return _allCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allCategories);
  }

  final List<LessonData> _filteredCategories;
  @override
  @JsonKey()
  List<LessonData> get filteredCategories {
    if (_filteredCategories is EqualUnmodifiableListView)
      return _filteredCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredCategories);
  }

  @override
  String toString() {
    return 'LessonListState(isLoading: $isLoading, allCategories: $allCategories, filteredCategories: $filteredCategories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessonListStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._allCategories, _allCategories) &&
            const DeepCollectionEquality()
                .equals(other._filteredCategories, _filteredCategories));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_allCategories),
      const DeepCollectionEquality().hash(_filteredCategories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LessonListStateImplCopyWith<_$LessonListStateImpl> get copyWith =>
      __$$LessonListStateImplCopyWithImpl<_$LessonListStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LessonListStateImplToJson(
      this,
    );
  }
}

abstract class _LessonListState implements LessonListState {
  const factory _LessonListState(
      {final bool isLoading,
      final List<LessonData> allCategories,
      final List<LessonData> filteredCategories}) = _$LessonListStateImpl;

  factory _LessonListState.fromJson(Map<String, dynamic> json) =
      _$LessonListStateImpl.fromJson;

  @override
  bool get isLoading;
  @override
  List<LessonData> get allCategories;
  @override
  List<LessonData> get filteredCategories;
  @override
  @JsonKey(ignore: true)
  _$$LessonListStateImplCopyWith<_$LessonListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
