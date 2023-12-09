// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flash_card_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FlashCardDataImpl _$$FlashCardDataImplFromJson(Map<String, dynamic> json) =>
    _$FlashCardDataImpl(
      id: json['id'] as String,
      frontText: json['frontText'] as String,
      backText: json['backText'] as String,
      information: json['information'] as String,
      categoryId: json['categoryId'] as String,
      status: $enumDecodeNullable(_$FlashCardStatusEnumMap, json['status']) ??
          FlashCardStatus.unknown,
    );

Map<String, dynamic> _$$FlashCardDataImplToJson(_$FlashCardDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'frontText': instance.frontText,
      'backText': instance.backText,
      'information': instance.information,
      'categoryId': instance.categoryId,
      'status': _$FlashCardStatusEnumMap[instance.status]!,
    };

const _$FlashCardStatusEnumMap = {
  FlashCardStatus.unknown: 'unknown',
  FlashCardStatus.success: 'success',
  FlashCardStatus.failure: 'failure',
};
