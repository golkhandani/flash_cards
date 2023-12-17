// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LessonDataImpl _$$LessonDataImplFromJson(Map<String, dynamic> json) =>
    _$LessonDataImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      information: json['information'] as String,
      isRecent: json['isRecent'] as bool,
      lastCardIndex: json['lastCardIndex'] as int,
      lastUpdate: DateTime.parse(json['lastUpdate'] as String),
    );

Map<String, dynamic> _$$LessonDataImplToJson(_$LessonDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'information': instance.information,
      'isRecent': instance.isRecent,
      'lastCardIndex': instance.lastCardIndex,
      'lastUpdate': instance.lastUpdate.toIso8601String(),
    };
