// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flash_card_list_state_manager.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FlashCardListStateImpl _$$FlashCardListStateImplFromJson(
        Map<String, dynamic> json) =>
    _$FlashCardListStateImpl(
      category: json['category'] == null
          ? null
          : LessonData.fromJson(json['category'] as Map<String, dynamic>),
      isLoading: json['isLoading'] as bool? ?? false,
      flashCards: (json['flashCards'] as List<dynamic>?)
              ?.map((e) => FlashCardData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      initialIndex: json['initialIndex'] as int? ?? 0,
      currentIndex: json['currentIndex'] as int? ?? 0,
    );

Map<String, dynamic> _$$FlashCardListStateImplToJson(
        _$FlashCardListStateImpl instance) =>
    <String, dynamic>{
      'category': instance.category,
      'isLoading': instance.isLoading,
      'flashCards': instance.flashCards,
      'initialIndex': instance.initialIndex,
      'currentIndex': instance.currentIndex,
    };
