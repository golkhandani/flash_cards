import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flash_cards/modules/database/flash_card_collection.dart';

part 'flash_card_category_data.freezed.dart';
part 'flash_card_category_data.g.dart';

@freezed
class FlashCardCategoryData with _$FlashCardCategoryData {
  const factory FlashCardCategoryData({
    required String id,
    required String title,
    required String information,
    required bool isRecent,
    required int lastCardIndex,
    required DateTime lastUpdate,
  }) = _FlashCardCategoryData;

  factory FlashCardCategoryData.fromDb(FlashCardCategoryDb db) =>
      FlashCardCategoryData(
        id: db.id.toString(),
        title: db.title,
        information: db.information,
        isRecent: db.isRecent,
        lastCardIndex: db.lastCardIndex,
        lastUpdate: db.lastUpdate,
      );

  factory FlashCardCategoryData.fromJson(Map<String, Object?> json) =>
      _$FlashCardCategoryDataFromJson(json);
}
