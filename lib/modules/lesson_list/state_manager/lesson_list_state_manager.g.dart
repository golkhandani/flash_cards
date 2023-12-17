// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson_list_state_manager.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LessonListStateImpl _$$LessonListStateImplFromJson(
        Map<String, dynamic> json) =>
    _$LessonListStateImpl(
      isLoading: json['isLoading'] as bool? ?? false,
      allCategories: (json['allCategories'] as List<dynamic>?)
              ?.map((e) => LessonData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      filteredCategories: (json['filteredCategories'] as List<dynamic>?)
              ?.map((e) => LessonData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$LessonListStateImplToJson(
        _$LessonListStateImpl instance) =>
    <String, dynamic>{
      'isLoading': instance.isLoading,
      'allCategories': instance.allCategories,
      'filteredCategories': instance.filteredCategories,
    };
