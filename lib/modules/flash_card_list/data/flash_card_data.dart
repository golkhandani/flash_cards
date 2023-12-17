import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:word_wise_flash_cards/core/database/flash_card_collection.dart';

part 'flash_card_data.freezed.dart';
part 'flash_card_data.g.dart';

@freezed
class FlashCardData with _$FlashCardData {
  const factory FlashCardData({
    required String id,
    required String frontText,
    required String backText,
    // statics
    required String information,
    required String categoryId,
    @Default(FlashCardStatus.unknown) FlashCardStatus status,
  }) = _FlashCardData;

  factory FlashCardData.fromDb(FlashCardDb e) => FlashCardData(
        id: e.id.toString(),
        frontText: e.frontText ?? '',
        backText: e.backText ?? '',
        information: e.information ?? '',
        categoryId: e.categoryIds.toString(),
      );

  factory FlashCardData.fromJson(Map<String, Object?> json) =>
      _$FlashCardDataFromJson(json);
}
