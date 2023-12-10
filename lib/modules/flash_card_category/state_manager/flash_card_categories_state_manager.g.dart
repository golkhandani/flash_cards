// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flash_card_categories_state_manager.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FlashCardCategoryStateImpl _$$FlashCardCategoryStateImplFromJson(
        Map<String, dynamic> json) =>
    _$FlashCardCategoryStateImpl(
      isLoading: json['isLoading'] as bool? ?? false,
      categories: (json['categories'] as List<dynamic>?)
              ?.map((e) =>
                  FlashCardCategoryData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$FlashCardCategoryStateImplToJson(
        _$FlashCardCategoryStateImpl instance) =>
    <String, dynamic>{
      'isLoading': instance.isLoading,
      'categories': instance.categories,
    };
