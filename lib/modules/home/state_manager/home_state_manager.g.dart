// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_state_manager.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeStateImpl _$$HomeStateImplFromJson(Map<String, dynamic> json) =>
    _$HomeStateImpl(
      flashCardCategory: json['flashCardCategory'] == null
          ? null
          : FlashCardCategoryModel.fromJson(
              json['flashCardCategory'] as Map<String, dynamic>),
      flashCards: (json['flashCards'] as List<dynamic>?)
          ?.map((e) => FlashCardData.fromJson(e as Map<String, dynamic>))
          .toList(),
      isLoading: json['isLoading'] as bool? ?? false,
    );

Map<String, dynamic> _$$HomeStateImplToJson(_$HomeStateImpl instance) =>
    <String, dynamic>{
      'flashCardCategory': instance.flashCardCategory,
      'flashCards': instance.flashCards,
      'isLoading': instance.isLoading,
    };
