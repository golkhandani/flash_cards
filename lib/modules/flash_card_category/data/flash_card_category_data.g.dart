// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flash_card_category_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FlashCardCategoryDataImpl _$$FlashCardCategoryDataImplFromJson(
        Map<String, dynamic> json) =>
    _$FlashCardCategoryDataImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      information: json['information'] as String,
      isRecent: json['isRecent'] as bool,
      lastCardIndex: json['lastCardIndex'] as int,
      lastUpdate: DateTime.parse(json['lastUpdate'] as String),
    );

Map<String, dynamic> _$$FlashCardCategoryDataImplToJson(
        _$FlashCardCategoryDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'information': instance.information,
      'isRecent': instance.isRecent,
      'lastCardIndex': instance.lastCardIndex,
      'lastUpdate': instance.lastUpdate.toIso8601String(),
    };
