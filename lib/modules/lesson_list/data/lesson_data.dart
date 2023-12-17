import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:word_wise_flash_cards/core/database/flash_card_collection.dart';

part 'lesson_data.freezed.dart';
part 'lesson_data.g.dart';

@freezed
class LessonData with _$LessonData {
  const factory LessonData({
    required String id,
    required String title,
    required String information,
    required bool isRecent,
    required int lastCardIndex,
    required DateTime lastUpdate,
  }) = _LessonData;

  factory LessonData.fromDb(LessonDb db) => LessonData(
        id: db.id.toString(),
        title: db.title,
        information: db.information,
        isRecent: db.isRecent,
        lastCardIndex: db.lastCardIndex,
        lastUpdate: db.lastUpdate,
      );

  factory LessonData.fromJson(Map<String, Object?> json) =>
      _$LessonDataFromJson(json);
}
