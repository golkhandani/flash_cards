// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flash_card_category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FlashCardCategoryModelImpl _$$FlashCardCategoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FlashCardCategoryModelImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      information: json['information'] as String,
      isRecent: json['isRecent'] as bool,
      lastCardIndex: json['lastCardIndex'] as int,
      lastUpdate: DateTime.parse(json['lastUpdate'] as String),
    );

Map<String, dynamic> _$$FlashCardCategoryModelImplToJson(
        _$FlashCardCategoryModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'information': instance.information,
      'isRecent': instance.isRecent,
      'lastCardIndex': instance.lastCardIndex,
      'lastUpdate': instance.lastUpdate.toIso8601String(),
    };
